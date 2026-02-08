#!/usr/bin/env python

"""A modern and easy to use streamable zip file generator"""

import collections
import datetime
import errno
import functools
import logging
import os
import stat
import struct
import sys
import time
import threading
import warnings
from zipfile import (
    # Classes
    ZipInfo,
    # Constants
    ZIP_STORED, ZIP64_LIMIT, ZIP_FILECOUNT_LIMIT, ZIP_MAX_COMMENT,
    ZIP64_VERSION, BZIP2_VERSION, ZIP_BZIP2, LZMA_VERSION, ZIP_LZMA,
    ZIP_DEFLATED,
    # Byte sequence constants
    structFileHeader, structCentralDir, structEndArchive64, structEndArchive,
    structEndArchive64Locator, stringFileHeader, stringCentralDir,
    stringEndArchive64, stringEndArchive, stringEndArchive64Locator,
    # Size constants
    sizeFileHeader, sizeCentralDir, sizeEndCentDir, sizeEndCentDir64Locator,
    sizeEndCentDir64,
    # Functions
    crc32, _get_compressor, _check_compression as _check_compress_type,
)


# Constants for compatibility modes
PY313_COMPAT = sys.version_info < (3, 14)  # disable zstd
PY36_COMPAT = sys.version_info < (3, 7)  # disable compress_level
PY35_COMPAT = sys.version_info < (3, 6)  # backport ZipInfo functions, stringify path-like objects

# Size of chunks to read out of files
# Note that when compressing data the compressor will operate on bigger chunks
# than this - it keeps a cache as new chunks are fed to it.
READ_BUFFER = 1024 * 64  # 64K

# Min and max dates the Zip format can support
MIN_DATE = (1980, 1, 1, 0, 0, 0)
MAX_DATE = (2107, 12, 31, 23, 59, 59)

# How much to overestimate when checking if a file will require using zip64
# extensions (1.05 = by 5%). This is used because compressed data can sometimes
# be slightly bigger than uncompressed.
ZIP64_ESTIMATE_FACTOR = 1.05

# Characters that are to be considered path separators on the current platform
# (includes "/" regardless of platform as per ZIP format specification)
PATH_SEPARATORS = set(x for x in (os.sep, os.altsep, "/") if x)

# zstd-related constants
if not PY313_COMPAT:
    from zipfile import ZIP_ZSTANDARD, ZSTANDARD_VERSION
    from compression.zstd import CompressionParameter
    ZSTD_LEVEL_BOUNDS = CompressionParameter.compression_level.bounds()


__all__ = [
    # Defined classes
    "ZipStream", "ZipStreamInfo",
    # Compression constants (imported from zipfile)
    "ZIP_STORED",
    "ZIP_DEFLATED",
    "ZIP_BZIP2", "BZIP2_VERSION",
    "ZIP_LZMA", "LZMA_VERSION",
    *(["ZIP_ZSTANDARD", "ZSTANDARD_VERSION"] if not PY313_COMPAT else []),
    # Helper functions
    "walk"
]

__log__ = logging.getLogger(__name__)


def _check_compression(compress_type, compress_level):
    """Check the specified compression type and level are valid"""

    if PY36_COMPAT and compress_level is not None:
        raise ValueError("compress_level is not supported on Python <3.7")

    _check_compress_type(compress_type)

    if compress_level is None:
        return

    if compress_type in (ZIP_STORED, ZIP_LZMA):
        __log__.warning(
            "compress_level has no effect when using ZIP_STORED/ZIP_LZMA"
        )
    elif compress_type == ZIP_DEFLATED:
        if not 0 <= compress_level <= 9:
            raise ValueError(
                "compress_level must be between 0 and 9 when using ZIP_DEFLATED"
            )
    elif compress_type == ZIP_BZIP2:
        if not 1 <= compress_level <= 9:
            raise ValueError(
                "compress_level must be between 1 and 9 when using ZIP_BZIP2"
            )
    elif not PY313_COMPAT and compress_type == ZIP_ZSTANDARD:
        if not ZSTD_LEVEL_BOUNDS[0] <= compress_level <= ZSTD_LEVEL_BOUNDS[1]:
            raise ValueError(
                "compress_level must be between {} and {} when using ZIP_ZSTANDARD".format(
                    *ZSTD_LEVEL_BOUNDS
                )
            )


def _min_version_for_compress_type(compress_type, min_version=0):
    """Ensure the compress_type is supported by the min_version"""
    if compress_type == ZIP_BZIP2:
        min_version = max(BZIP2_VERSION, min_version)
    elif compress_type == ZIP_LZMA:
        min_version = max(LZMA_VERSION, min_version)
    elif not PY313_COMPAT and compress_type == ZIP_ZSTANDARD:
        min_version = max(ZSTANDARD_VERSION, min_version)
    return min_version


def _timestamp_to_dos(ts):
    """Takes an integer timestamp and converts it to a (dosdate, dostime) tuple"""
    return (
        (ts[0] - 1980) << 9 | ts[1] << 5 | ts[2],
        ts[3] << 11 | ts[4] << 5 | (ts[5] // 2)
    )


class ZipStreamInfo(ZipInfo):
    """A ZipInfo subclass that always uses a data descriptor to store filesize data"""

    def __init__(self, filename, date_time=None):
        # Default the date_time to the current local time and automatically
        # clamp it to the range that the zip format supports.
        date_time = date_time or time.localtime()[0:6]
        if not (MIN_DATE <= date_time <= MAX_DATE):
            __log__.warning(
                "Date of %s is outside of the supported range for zip files"
                "and was automatically adjusted",
                date_time
            )
            date_time = min(max(MIN_DATE, date_time), MAX_DATE)

        super().__init__(filename, date_time)

    def DataDescriptor(self, zip64):
        """Return the data descriptor for the file entry"""
        # Using a data descriptor is an alternate way to encode the file size
        # and CRC that can be inserted after the compressed data instead of
        # before it like normal. This is essential for making the zip data
        # streamable
        return struct.pack(
            "<4sLQQ" if zip64 else "<4sLLL",
            b"PK\x07\x08",  # Data descriptor signature
            self.CRC,
            self.compress_size,
            self.file_size
        )

    def FileHeader(self, zip64):
        """Return the per-file header as bytes"""
        # Based on code in zipfile.ZipInfo.FileHeader

        # Logic for where the file sizes are listed is as follows:
        # From the zip spec:
        # - When using a data descriptor, the file sizes should be listed as 0
        #   in the file header.
        # - When using Zip64, the header size fields should always be set to
        #   0xFFFFFFFF to indicate that the size is in the Zip64 extra field.
        # - The format of the data descriptor depends on if a Zip64 extra field
        #   is present in the file header.
        # Assumption:
        # - When using both a data descriptor and Zip64 extensions, the header
        #   size fields should be set to 0xFFFFFFFF to indicate that the true
        #   sizes are in the required Zip64 extra field, which should list the
        #   sizes as 0 to defer to the data descriptor.

        dosdate, dostime = _timestamp_to_dos(self.date_time)
        if self.flag_bits & 0x08:
            # Using a data descriptor record to record the file sizes, set
            # everything to 0 since they'll be written there instead.
            CRC = compress_size = file_size = 0
        else:
            CRC = self.CRC
            compress_size = self.compress_size
            file_size = self.file_size

        min_version = 0
        extra = self.extra
        if zip64:
            min_version = ZIP64_VERSION
            extra += struct.pack(
                "<HHQQ",
                0x01,  # Zip64 extended information extra field identifier
                16,  # length of the following "QQ" data
                file_size,
                compress_size,
            )
            # Indicate that the size is in the Zip64 extra field instead
            file_size = 0xFFFFFFFF
            compress_size = 0xFFFFFFFF

        min_version = _min_version_for_compress_type(self.compress_type, min_version)
        self.extract_version = max(min_version, self.extract_version)
        self.create_version = max(min_version, self.create_version)
        filename, flag_bits = self._encodeFilenameFlags()
        header = struct.pack(
            structFileHeader,
            stringFileHeader,
            self.extract_version,
            self.reserved,
            flag_bits,
            self.compress_type,
            dostime,
            dosdate,
            CRC,
            compress_size,
            file_size,
            len(filename),
            len(extra)
        )
        return header + filename + extra

    def _file_data(self, iterable=None, force_zip64=False):
        """Given an iterable of file data, yield a local file header and file
        data for it.

        If `force_zip64` is True (not default), then zip64 extensions will
        always be used for storing files (not directories).
        """
        # Based on the code in zipfile.ZipFile.write, zipfile._ZipWriteFile.{write,close}

        if self.compress_type == ZIP_LZMA:
            # Compressed LZMA data includes an end-of-stream (EOS) marker
            self.flag_bits |= 0x02

        # Adding a folder - just need the header without any data or a data descriptor
        if self.is_dir():
            self.CRC = 0
            self.compress_size = 0
            self.file_size = 0
            self.flag_bits &= ~0x08  # Unset the data descriptor flag
            yield self.FileHeader(zip64=False)
            return

        if not iterable:  # pragma: no cover
            raise ValueError("Not a directory but no data given to encode")

        # Set the data descriptor flag so the filesizes and CRC can be added
        # after the file data
        self.flag_bits |= 0x08

        # Compressed size can be larger than uncompressed size - overestimate a bit
        zip64 = force_zip64 or self.file_size * ZIP64_ESTIMATE_FACTOR > ZIP64_LIMIT

        # Make header
        yield self.FileHeader(zip64)

        # Store/compress the data while keeping track of size and CRC
        if not PY36_COMPAT:
            cmpr = _get_compressor(self.compress_type, self._compresslevel)
        else:
            cmpr = _get_compressor(self.compress_type)
        crc = 0
        file_size = 0
        compress_size = 0

        for buf in iterable:
            file_size += len(buf)
            crc = crc32(buf, crc) & 0xFFFFFFFF
            if cmpr:
                buf = cmpr.compress(buf)
                compress_size += len(buf)
            yield buf

        if cmpr:
            buf = cmpr.flush()
            if buf:
                compress_size += len(buf)
                yield buf
        else:
            compress_size = file_size

        # Update the CRC and filesize info
        self.CRC = crc
        self.file_size = file_size
        self.compress_size = compress_size

        if not zip64 and max(file_size, compress_size) > ZIP64_LIMIT:
            # Didn't estimate correctly :(
            raise RuntimeError(
                "Adding file '{}' unexpectedly required using Zip64 extensions".format(
                    self.filename
                )
            )

        # Yield the data descriptor with the now-valid CRC and file size info
        yield self.DataDescriptor(zip64)

    def _central_directory_header_data(self):
        """Return a central directory file header for this file"""
        # Based on code in zipfile.ZipFile._write_end_record

        dosdate, dostime = _timestamp_to_dos(self.date_time)
        extra = []

        # Store sizes and offsets in the extra data if they're too big
        # for the normal spot
        if max(self.file_size, self.compress_size) > ZIP64_LIMIT:
            extra.append(self.file_size)
            extra.append(self.compress_size)
            file_size = 0xFFFFFFFF
            compress_size = 0xFFFFFFFF
        else:
            file_size = self.file_size
            compress_size = self.compress_size

        if self.header_offset > ZIP64_LIMIT:
            extra.append(self.header_offset)
            header_offset = 0xFFFFFFFF
        else:
            header_offset = self.header_offset

        extra_data = self.extra
        min_version = 0
        if extra:
            # Append a Zip64 field to the extra's
            # Note that zipfile.ZipFile._write_end_record strips any existing
            # zip64 records here first - since we control the generation of
            # ZipStreamInfo records, there shouldn't ever be any so we don't
            # bother.
            extra_data = struct.pack(
                "<HH" + "Q"*len(extra), 1, 8*len(extra), *extra
            ) + extra_data
            min_version = ZIP64_VERSION

        min_version = _min_version_for_compress_type(self.compress_type, min_version)
        extract_version = max(min_version, self.extract_version)
        create_version = max(min_version, self.create_version)
        filename, flag_bits = self._encodeFilenameFlags()
        centdir = struct.pack(
            structCentralDir,
            stringCentralDir,
            create_version,
            self.create_system,
            extract_version,
            self.reserved,
            flag_bits,
            self.compress_type,
            dostime,
            dosdate,
            self.CRC,
            compress_size,
            file_size,
            len(filename),
            len(extra_data),
            len(self.comment),
            0,  # disk number this file begins on
            self.internal_attr,
            self.external_attr,
            header_offset
        )
        return centdir + filename + extra_data + self.comment

    if PY35_COMPAT:  # pragma: no cover
        # Backport essential functions introduced in 3.6

        @classmethod
        def from_file(cls, filename, arcname=None):
            """Construct an appropriate ZipInfo for a file on the filesystem.
            filename should be the path to a file or directory on the filesystem.
            arcname is the name which it will have within the archive (by default,
            this will be the same as filename, but without a drive letter and with
            leading path separators removed).
            """
            st = os.stat(filename)
            isdir = stat.S_ISDIR(st.st_mode)
            mtime = time.localtime(st.st_mtime)
            date_time = mtime[0:6]
            # Create ZipInfo instance to store file information
            if arcname is None:
                arcname = filename
            arcname = os.path.normpath(os.path.splitdrive(arcname)[1])
            while arcname[0] in (os.sep, os.altsep):
                arcname = arcname[1:]
            if isdir:
                arcname += '/'
            zinfo = cls(arcname, date_time)
            zinfo.external_attr = (st.st_mode & 0xFFFF) << 16  # Unix attributes
            if isdir:
                zinfo.file_size = 0
                zinfo.external_attr |= 0x10  # MS-DOS directory flag
            else:
                zinfo.file_size = st.st_size

            return zinfo

        def is_dir(self):
            """Return True if this archive member is a directory."""
            return self.filename[-1] == '/'


def _validate_final(func):
    """Prevent the wrapped method from being called if the ZipStream is finalized"""

    @functools.wraps(func)
    def wrapper(self, *args, **kwargs):
        if self._final:
            raise RuntimeError("ZipStream has already been finalized")
        return func(self, *args, **kwargs)

    return wrapper


def _validate_compression(func):
    """Prevent the wrapped method from using invalid compression options"""

    @functools.wraps(func)
    def wrapper(self, *args, compress_type=None, compress_level=None, **kwargs):
        if compress_type is not None or compress_level is not None:
            _check_compression(
                compress_type if compress_type is not None else self._compress_type,
                compress_level if compress_level is not None else self._compress_level
            )

        return func(
            self,
            *args,
            compress_type=compress_type,
            compress_level=compress_level,
            **kwargs
        )

    return wrapper


def _sanitize_arcname(arcname):
    """Terminate the arcname at the first null byte"""
    # based on zipfile._sanitize_filename
    if not arcname:
        return ""

    # trim the arcname to the first null byte
    null_byte = arcname.find(chr(0))
    if null_byte >= 0:
        arcname = arcname[:null_byte]

    # Ensure paths in the zip always use forward slashes as the directory
    # separator and strip any leading ones
    for sep in PATH_SEPARATORS:
        if sep != "/":
            arcname = arcname.replace(sep, "/")
    return arcname.lstrip("/")


def _iter_file(path):
    """Yield data from a file"""
    with open(path, "rb") as fp:
        while True:
            buf = fp.read(READ_BUFFER)
            if not buf:
                break
            yield buf


def walk(path, preserve_empty=True, followlinks=True):
    """Recursively walk the given the path and yield files/folders under it.

    preserve_empty:
        If True (the default), empty directories will be included in the
        output. The paths of these directories will be yielded with a trailing
        path separator.

    followlinks:
        If True (the default), symlinks to folders will be resolved and
        followed unless this would result in infinite recursion (symlinks to
        files are always resolved)
    """

    # Define a function to return the device and inode for a path.
    # Will be used to deduplicate folders to avoid infinite recursion
    def _getkey(path):
        st = os.stat(path)
        return (st.st_dev, st.st_ino)

    visited = {_getkey(path)}
    for dirpath, dirnames, files in os.walk(path, followlinks=followlinks):

        if followlinks:
            # Prevent infinite recursion by removing previously-visited
            # directories from dirnames.
            for i in reversed(range(len(dirnames))):
                k = _getkey(os.path.join(dirpath, dirnames[i]))
                if k in visited:
                    dirnames.pop(i)
                else:
                    visited.add(k)

        # Preserve empty directories
        if preserve_empty and not files and not dirnames:
            files = [""]

        for f in files:
            yield os.path.join(dirpath, f)


class ZipStream:
    """A write-only zip that is generated from source files/data as it's
    iterated over.

    Ideal for situations where a zip file needs to be dynamically generated
    without using temporary files (ie: web applications).
    """

    def __init__(self, *, compress_type=ZIP_STORED, compress_level=None, sized=False):
        """Create a ZipStream

        compress_type:
            The ZIP compression method to use when writing the archive, and
            should be ZIP_STORED, ZIP_DEFLATED, ZIP_BZIP2, ZIP_LZMA, or
            ZIP_ZSTANDARD (Python 3.14+); unrecognized values will cause
            NotImplementedError to be raised.
            If ZIP_DEFLATED, ZIP_BZIP2, ZIP_LZMA, or ZIP_ZSTANDARD is specified
            but the corresponding module (zlib, bz2, lzma, or compression.zstd)
            is not available, RuntimeError is raised. The default is ZIP_STORED.

        compress_level:
            Controls the compression level to use when writing files to the
            archive. When using ZIP_STORED or ZIP_LZMA it has no effect.
            When using ZIP_DEFLATED integers 0 through 9 are accepted (see zlib
            for more information).
            When using ZIP_BZIP2 integers 1 through 9 are accepted (see bz2 for
            more information).
            When using ZIP_ZSTANDARD integers -7 though 22 are common (see
            compression.zstd.CompressionParameter for more information).
            Raises a ValueError if the provided value isn't valid for the
            `compress_type`.

            Only available in Python 3.7+ (raises a ValueError if used on a
            lower version)

        sized:
            If `True`, will make the ZipStream able to calculate its final size
            prior to being generated, making it work with the `len()` function.
            Enabling this will enforce two restrictions:
              - No compression can be used
              - Any iterables added to the stream without also specifying their
                size (see `.add` docs) will immediately be read fully into
                memory. This is because the size of the data they will produce
                must be known prior to the stream being generated.

            If `False` (the default), no restrictions are enforced and using the
            object with the `len()` function will not work (will raise a
            TypeError)
        """
        if compress_type and sized:
            raise ValueError("Cannot use compression with a sized ZipStream")

        _check_compression(compress_type, compress_level)

        self._compress_type = compress_type
        self._compress_level = compress_level
        self._comment = b""
        self._last_modified = None

        # For adding files
        self._filelist = []
        self._queue = collections.deque()

        # For calculating the size
        self._sized = sized
        self._size_prog = (0, 0, 0)
        self._size_lock = threading.Lock()

        # For generating
        self._gen_lock = threading.Lock()
        self._pos = 0
        self._final = False

    def __iter__(self):
        """Generate zipped data from the added files/data"""
        return self.finalize()

    def __bool__(self):
        """A ZipStream is considered truthy if any files have been added to it"""
        return not self.is_empty()

    def __len__(self):
        """The final size of the zip stream

        Raises a TypeError if the length is unknown
        """
        if not self._sized:
            raise TypeError("The length of this ZipStream is unknown")

        with self._size_lock:
            (num_files, files_size, cdfh_size) = self._size_prog

        # Calculate the amount of data the end of central directory needs. This
        # is computed every time since it depends on the other metrics. Also,
        # it means that we don't have to deal with detecting if the comment
        # changes.
        eocd_size = sizeEndCentDir + len(self._comment)  # 22 + comment len
        if (
            num_files > ZIP_FILECOUNT_LIMIT or
            files_size > ZIP64_LIMIT or
            cdfh_size > ZIP64_LIMIT
        ):
            eocd_size += sizeEndCentDir64  # 56
            eocd_size += sizeEndCentDir64Locator  # 20

        return cdfh_size + files_size + eocd_size

    def __bytes__(self):
        """Get the bytes of the ZipStream"""
        return b"".join(self)

    def file(self):
        """Generate data for a single file being added to the ZipStream

        Yields the stored data for a single file.
        Returns True if a file was available, False otherwise.
        """
        if self._final:
            return False

        try:
            kwargs = self._queue.popleft()
        except IndexError:
            return False

        # Since generating the file entry depends on the current number of bytes
        # generated, calling this function again without exhausting the generator
        # first will cause corrupted streams. Prevent this by adding a lock
        # around the functions that actually generate data.
        with self._gen_lock:
            yield from self._gen_file_entry(**kwargs)
        return True

    def all_files(self):
        """Generate data for all the currently added files"""
        while (yield from self.file()):
            pass

    def footer(self):
        """Generate the central directory record, signifying the end of the stream

        Note that this will NOT ensure all queued files are written to the zip
        stream first. For that, see `.finalize()`.
        """
        with self._gen_lock:
            if self._final:
                return
            yield from self._gen_archive_footer()

    def finalize(self):
        """Finish generating the zip stream and finalize it.

        Will finish processing all the files in the queue before writing the
        archive footer. To disard the items in the queue instead, see
        `.footer()`.
        """
        yield from self.all_files()
        yield from self.footer()

    @_validate_final
    @_validate_compression
    def add_path(self, path, arcname=None, *, recurse=True, compress_type=None, compress_level=None):
        """Queue up a path to be added to the ZipStream

        Queues the `path` up to to be written to the archive, giving it the
        name provided by `arcname`.
        If `arcname` is not provided/empty, it is assumed to be the last
        component of the `path` (ex: "/path/to/files/" --> "files",
        "/path/to/file.ext" --> "file.ext").
        Using an `arcname` of `"/"` is valid when recursing - it causes all
        the files under `path` to be added at the top level of the zip.

        If `recurse` is `True` (the default), and the `path` is a directory,
        all contents under the `path` will also be added. By default, this is
        done using the `walk` function in this module, which will preserve
        empty directories as well as follow symlinks to files and folders
        unless this would result in infinite recursion.

        If more control over directory walking is required, a function that
        takes a `path` and returns an iterable of paths can also be passed in
        as `recurse`. Alternatively, the directory can be walked in external
        code while calling `add_path(path, arcname, recurse=False)` for each
        discovered entry.

        If recurse is `False`, only the specified path (file or directory) will
        be added.

        If given, `compress_type` and `compress_level` override the settings
        the ZipStream was initialized with.

        Raises a FileNotFoundError if the path does not exist
        Raises a ValueError if an arcname isn't provided and the assumed
        one is empty.
        Raises a RuntimeError if the ZipStream has already been finalized.
        """
        # Resolve path objects to strings on Python 3.5
        if PY35_COMPAT and hasattr(path, "__fspath__"):  # pragma no cover
            path = path.__fspath__()

        if not os.path.exists(path):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), path)

        path = os.path.normpath(path)

        # special case - discover the arcname from the path
        if not arcname:
            arcname = _sanitize_arcname(os.path.basename(path))
            if not arcname:
                raise ValueError(
                    "No arcname for path '{}' could be assumed".format(path)
                )
        else:
            arcname = _sanitize_arcname(arcname)

        # Not recursing - just add the path
        if not recurse or not os.path.isdir(path):
            self._enqueue(
                path=path,
                arcname=arcname,
                compress_type=compress_type,
                compress_level=compress_level
            )
            return

        if recurse is True:
            recurse = walk

        for filepath in recurse(path):
            filename = os.path.relpath(filepath, path)
            # skip adding the top-level directory if the sanitized arcname is empty
            if filename == "." and not arcname:
                continue
            filearcname = os.path.normpath(os.path.join(arcname, filename))
            self._enqueue(
                path=filepath,
                arcname=filearcname,
                compress_type=compress_type,
                compress_level=compress_level
            )

    @_validate_final
    @_validate_compression
    def add(self, data, arcname, *, size=None, compress_type=None, compress_level=None):
        """Queue up data to be added to the ZipStream

        `data` can be bytes, a string (encoded to bytes using utf-8), or any
        object that supports the iterator protocol (ie. objects that provide an
        `__iter__` function). If an iterable object is provided, it must return
        bytes from its iterator or an exception will be raised when the object
        is added to the stream. `None` is also supported (will create an empty
        file or a directory)

        `arcname` (required) is the name of the file to store the data in. If
        any `data` is provided then the `arcname` cannot end with a "/" as this
        would create a directory (which can't contain content).

        `size` (optional) specifies the size of the `data` ONLY in the case
        where it is an iterator. It is ignored in all other cases.

        Note that the data provided will not be used until the file is actually
        encoded in the ZipStream. This means that strings and bytes will be held
        in memory and iterables will not be iterated over until then. For this
        reason it's a good idea to use `add_path()` wherever possible.

        If given, `compress_type` and `compress_level` override the settings the
        ZipStream was initialized with.

        Raises a ValueError if an arcname is not provided or ends with a "/"
        when data is given.
        Raises a TypeError if the data is not str, bytes, or an iterator.
        Raises a RuntimeError if the ZipStream has already been finalized.
        """
        arcname = _sanitize_arcname(arcname)
        if not arcname:
            raise ValueError("A valid arcname is required")

        if data is None:
            data = b""
        elif isinstance(data, str):
            data = data.encode("utf-8")
        elif isinstance(data, bytearray):
            # bytearrays are mutable - need to store a copy so it doesn't
            # change while we're iterating over it.
            data = bytes(data)

        is_directory = arcname[-1] in PATH_SEPARATORS

        if isinstance(data, bytes):
            if is_directory and data:
                raise ValueError("Can't store data as a directory")

            self._enqueue(
                data=data,
                arcname=arcname,
                compress_type=compress_type,
                compress_level=compress_level,
            )
        elif hasattr(data, "__iter__"):
            if is_directory:
                raise ValueError("Can't store an iterable as a directory")

            self._enqueue(
                iterable=data,
                size=size,
                arcname=arcname,
                compress_type=compress_type,
                compress_level=compress_level,
            )
        else:
            raise TypeError(
                "Data to add must be str, bytes, or an iterable of bytes"
            )

    def mkdir(self, arcname):
        """Create a directory inside the ZipStream"""
        arcname = _sanitize_arcname(arcname)
        if not arcname:
            raise ValueError("A valid arcname for the directory is required")

        if arcname[-1] != "/":
            arcname += "/"

        self.add(data=None, arcname=arcname)

    @property
    def sized(self):
        """True if the ZipStream's final size is known"""
        return self._sized

    @property
    def last_modified(self):
        """Return the date of the most recently modified file in the ZipStream

        Returns a `datetime.datetime` object or `None` if the ZipStream is
        empty.
        """
        return datetime.datetime(*self._last_modified) if self._last_modified else None

    @property
    def comment(self):
        """The comment associated with the the ZipStream"""
        return self._comment

    @comment.setter
    @_validate_final
    def comment(self, comment):
        """Set the comment on the ZipStream

        If a string is provided it will be encoded to bytes as utf-8.
        If the comment is longer than 65,535 characters it will be truncated.

        Raises a RuntimeError if the ZipStream has already been finalized.
        """
        if comment is None:
            comment = b""
        elif isinstance(comment, str):
            comment = comment.encode("utf-8")
        elif isinstance(comment, bytearray):
            comment = bytes(comment)

        if not isinstance(comment, bytes):
            raise TypeError(
                "Expected bytes, got {}".format(type(comment).__name__)
            )
        if len(comment) > ZIP_MAX_COMMENT:
            __log__.warning(
                "Archive comment is too long; truncating to %d bytes",
                ZIP_MAX_COMMENT
            )
            comment = comment[:ZIP_MAX_COMMENT]
        self._comment = comment

    def is_empty(self):
        """Check if any files have been added to the ZipStream"""
        return not self._queue and not self._filelist

    def num_queued(self):
        """The number of files queued up to be added to the stream"""
        return len(self._queue)

    def num_streamed(self):
        """The number of files that have already been added to the stream"""
        return len(self._filelist)

    def info_list(self):
        """Get a list of dicts containing data about each file in the ZipStream

        File information will be yielded in the order that the files were
        added.

        All files will be included in this list. The "streamed" key indicates
        if the file has been written to the ZipStream or not. Files that
        haven't yet been written to the ZipStream will be missing information
        that's only known post-write (compressed size, CRC, datetime, etc.)
        """
        # Need to prevent another thread from popping a result from
        # self._queue, then this function being run before it can be added to
        # self._filelist
        with self._gen_lock:
            info = [
                {
                    "name": x.filename,
                    "size": x.file_size,
                    "compressed_size": x.compress_size,
                    "datetime": x.date_time,
                    "is_dir": x.is_dir(),
                    "CRC": x.CRC,
                    "compress_type": x.compress_type,
                    "compress_level": getattr(x, "_compresslevel", None),  # <3.7 compat
                    "streamed": True,
                }
                for x in self._filelist
            ]
            for x in self._queue:
                is_dir = x["arcname"][-1] == "/"
                compress_type = x.get("compress_type", self._compress_type)
                if is_dir:
                    compress_size = 0
                elif compress_type == ZIP_STORED:
                    compress_size = x.get("size")
                else:
                    compress_size = None

                info.append({
                    "name": x["arcname"],
                    "size": x.get("size"),
                    "compressed_size": compress_size,
                    "datetime": None,
                    "is_dir": is_dir,
                    "CRC": None,
                    "compress_type": compress_type,
                    "compress_level": x.get("compress_level", self._compress_level),
                    "streamed": False,
                })

        return info

    def get_info(self):
        """Get a list of dicts containing data about each file currently in the
        ZipStream.

        Note that this ONLY includes files that have already been written to the
        ZipStream. Queued files are NOT included.
        """
        warnings.warn(
            "ZipStream.get_info is deprecated and will be removed in a future "
            "version. Use ZipStream.info_list instead",
            DeprecationWarning,
        )
        return [
            {
                "name": x.filename,
                "size": x.file_size,
                "compressed_size": x.compress_size,
                "datetime": datetime.datetime(*x.date_time).isoformat(),
                "CRC": x.CRC,
                "compress_type": x.compress_type,
                "compress_level": getattr(x, "_compresslevel", None),  # <3.7 compat
                "extract_version": x.extract_version,
            }
            for x in self._filelist
        ]

    @classmethod
    def from_path(cls, path, *, compress_type=ZIP_STORED, compress_level=None, sized=None, **kwargs):
        """Convenience method that creates a ZipStream and adds the contents of
        a path to it.

        `sized` defaults to `True` if no compression is used, `False`
        otherwise. All other parameter defaults are the same as those in
        `__init__` and `add_path`.

        The `compress_type`, `compress_level`, and `sized` parameters will be
        passed to `__init__`, all other args and kwargs are passed to
        `add_path`.
        """
        if sized is None:
            sized = compress_type == ZIP_STORED

        z = cls(
            compress_type=compress_type,
            compress_level=compress_level,
            sized=sized
        )
        z.add_path(path, **kwargs)
        return z

    def _enqueue(self, **kwargs):
        """Internal method to enqueue files, data, and iterables to be streamed"""
        if not kwargs["arcname"].rstrip("/"):
            raise ValueError("A valid arcname is required")

        path = kwargs.get("path")
        data = kwargs.get("data")
        size = kwargs.get("size")

        if path:
            st = os.stat(path)
        else:
            st = None

        # Get the modified time of the added path (use current time for
        # non-paths) and use it to update the last_modified property
        mtime = time.localtime(st.st_mtime if path else None)[0:6]
        if self._last_modified is None or self._last_modified < mtime:
            self._last_modified = mtime

        # Get the expected size of the data where possible
        if path or size is None:
            if path:
                if stat.S_ISDIR(st.st_mode):
                    kwargs["size"] = 0
                else:
                    kwargs["size"] = st.st_size
            elif data is not None:
                kwargs["size"] = len(data)

        # If adding data from a path ensure that the name matches the type of
        # data being added.
        if path:
            name_is_dir = kwargs["arcname"][-1] == "/"
            path_is_dir = stat.S_ISDIR(st.st_mode)
            if path_is_dir and not name_is_dir:
                kwargs["arcname"] += "/"
            elif not path_is_dir and name_is_dir:
                kwargs["arcname"] = kwargs["arcname"].rstrip("/")

        # If the ZipStream is sized then it will look at what is being added
        # and add the number of bytes used by this file to the running total
        # length of the stream. It will also read any iterables fully into
        # memory so their size is known.
        if self._sized:
            if kwargs.get("compress_type"):
                raise ValueError("Cannot use compression with a sized ZipStream")

            # Iterate the iterable data to get the size and replace it with the static data
            if path is None and data is None and size is None:
                data = b"".join(kwargs.pop("iterable"))
                kwargs["size"] = len(data)
                kwargs["data"] = data

            self._add_size_from_file(kwargs["arcname"], kwargs["size"])

        # Remove any default/redundant compression parameters
        if kwargs.get("compress_type") in (None, self._compress_type):
            kwargs.pop("compress_type", None)
        if kwargs.get("compress_level") in (None, self._compress_level):
            kwargs.pop("compress_level", None)

        self._queue.append(kwargs)

    def _track(self, data):
        """Data passthrough with byte counting"""
        self._pos += len(data)
        return data

    def _gen_file_entry(self, *, path=None, iterable=None, data=None, size=None, arcname, compress_type=None, compress_level=None):
        """Yield the zipped data generated by the specified path/iterator/data"""
        assert bool(path) ^ bool(iterable) ^ bool(data is not None)
        assert not (self._sized and size is None)

        if path:
            zinfo = ZipStreamInfo.from_file(path, arcname)
        else:
            zinfo = ZipStreamInfo(arcname)
            # Set the external attributes in the same way as ZipFile.writestr
            if zinfo.is_dir():
                zinfo.external_attr = 0o40775 << 16  # drwxrwxr-x
                zinfo.external_attr |= 0x10  # MS-DOS directory flag
            else:
                zinfo.external_attr = 0o600 << 16  # ?rw-------

            if data is not None:
                zinfo.file_size = len(data)
            elif size is not None:
                zinfo.file_size = size

        zinfo.compress_type = compress_type if compress_type is not None else self._compress_type
        if not PY36_COMPAT:
            if zinfo.compress_type in (ZIP_STORED, ZIP_LZMA):
                # Make sure the zinfo properties are accurate for info_list
                zinfo._compresslevel = None
            else:
                zinfo._compresslevel = compress_level if compress_level is not None else self._compress_level

        # Store the position of the header
        zinfo.header_offset = self._pos

        # We need to force using zip64 extensions for unsized iterables since
        # we don't know how big they'll end up being.
        force_zip64 = bool(iterable) and size is None

        # Convert paths and data into iterables
        if path:
            if zinfo.is_dir():
                iterable = None
            else:
                iterable = _iter_file(path)
        elif data is not None:
            def gen():
                yield data
            iterable = gen()

        # Generate the file data
        for x in zinfo._file_data(iterable, force_zip64=force_zip64):
            yield self._track(x)

        if size is not None and size != zinfo.file_size:
            # The size of the data that was stored didn't match what was
            # expected. Note that this still produces a valid zip file, just
            # one with a different amount of data than was expected.
            # If the ZipStream is sized, this will raise an error since the
            # actual size will no longer match the calculated size.
            __log__.warning(
                "Size mismatch when adding data for '%s' (expected %d bytes, got %d)",
                arcname,
                size,
                zinfo.file_size
            )
            if self._sized:
                raise RuntimeError(
                    "Error adding '{}' to sized ZipStream - "
                    "actual size did not match the computed size".format(arcname)
                )

        self._filelist.append(zinfo)

    def _gen_archive_footer(self):
        """Yield data for the end of central directory record"""
        # Based on zipfile.ZipFile._write_end_record

        # Mark the ZipStream as finalized so no other data can be added to it
        self._final = True

        # Write central directory file headers
        centDirOffset = self._pos
        for zinfo in self._filelist:
            yield self._track(zinfo._central_directory_header_data())

        # Write end of central directory record
        zip64EndRecStart = self._pos
        centDirCount = len(self._filelist)
        centDirSize = zip64EndRecStart - centDirOffset
        if (centDirCount >= ZIP_FILECOUNT_LIMIT or
            centDirOffset > ZIP64_LIMIT or
            centDirSize > ZIP64_LIMIT
        ):
            # Need to also write a Zip64 end-of-archive record
            zip64EndRec = struct.pack(
                structEndArchive64,
                stringEndArchive64,
                44,  # size of this record after this point
                     # (note: no "zip extensible data" is added so this is a constant)
                45,  # version made by (Zip64 support)
                45,  # version needed to extract (Zip64 support)
                0,  # disk number this record is on
                0,  # disk number that contains the start of the central directory
                centDirCount,
                centDirCount,
                centDirSize,
                centDirOffset,
            )
            zip64LocRec = struct.pack(
                structEndArchive64Locator,
                stringEndArchive64Locator,
                0,  # disk number where the zip64EndRec starts
                zip64EndRecStart,
                1,  # total number of disks
            )
            yield self._track(zip64EndRec + zip64LocRec)

            centDirCount = min(centDirCount, 0xFFFF)
            centDirSize = min(centDirSize, 0xFFFFFFFF)
            centDirOffset = min(centDirOffset, 0xFFFFFFFF)

        endRec = struct.pack(
            structEndArchive,
            stringEndArchive,
            0,  # disk number this record is on
            0,  # disk number that contains the start of the central directory
            centDirCount,
            centDirCount,
            centDirSize,
            centDirOffset,
            len(self._comment)
        )
        yield self._track(endRec + self._comment)

    def _add_size_from_file(self, arcname, size):
        """Add the file to the calculated size of the ZipStream"""

        # Need to prevent multiple threads from reading _size_prog, calculating
        # independently, then all writing back conflicting progress.
        with self._size_lock:
            # These 3 metrics need to be tracked separately since the decision to
            # add a zip64 header on the end of the stream depends on any of these
            # exceeding a limit.
            (num_files, files_size, cdfh_size) = self._size_prog

            # Get the number of bytes the arcname uses by encoding it in
            # the same way that ZipStreamInfo._encodeFilenameFlags does
            try:
                arcname_len = len(arcname.encode("ascii"))
            except UnicodeEncodeError:
                arcname_len = len(arcname.encode("utf-8"))

            # Calculate if zip64 extensions are required in the same way that
            # ZipStreamInfo.file_data does
            uses_zip64 = size * ZIP64_ESTIMATE_FACTOR > ZIP64_LIMIT

            # Track the number of extra records in the central directory file
            # header encoding this file will require
            cdfh_extras = 0

            # Any files added after the size exceeds the zip64 limit will
            # require an extra record to encode their location.
            if files_size > ZIP64_LIMIT:
                cdfh_extras += 1

            # FileHeader
            files_size += sizeFileHeader + arcname_len # 30 + name len

            # Folders don't have any data or require any extra records
            if arcname[-1] != "/":

                # When using zip64, the size and compressed size of the file are
                # written as an extra field in the FileHeader.
                if uses_zip64:
                    files_size += 20  # struct.calcsize('<HHQQ')

                # file data
                files_size += size

                # DataDescriptor
                files_size += 24 if uses_zip64 else 16  # struct.calcsize('<LLQQ' if zip64 else '<LLLL')

                # Storing the size of a large file requires 2 extra records
                # (size and compressed size)
                if size > ZIP64_LIMIT:
                    cdfh_extras += 2

            cdfh_size += sizeCentralDir  # 46
            cdfh_size += arcname_len

            # Add space for extra data
            if cdfh_extras:
                cdfh_size += 4 + (8 * cdfh_extras)  # struct.calcsize('<HH' + 'Q' * cdfh_extras)

            num_files += 1

            # Record the current progress for next time
            self._size_prog = (num_files, files_size, cdfh_size)
