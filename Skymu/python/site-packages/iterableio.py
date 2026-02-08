#!/usr/bin/env python

import io


class RawIterableReader(io.RawIOBase):
    """A io.RawIOBase implemention for an iterable of bytes

    In most cases, this class should not be used directly. See the included
    `open_iterable` function for a high-level interface.
    """

    def __init__(self, iterable):
        self._iter = iter(iterable)
        self._buffer = bytearray()
        self._total = 0

    def readable(self):
        return True

    def close(self):
        self._iter = None
        self._buffer = None
        super().close()

    def tell(self):
        """The total number of bytes that have been read"""
        self._checkClosed()
        return self._total - len(self._buffer)

    def readinto(self, b):
        """Read bytes into a pre-allocated bytes-like object b

        Returns the number of bytes read, 0 indicates EOF
        """
        self._checkClosed()
        num = len(b)
        if self._iter is not None:
            while len(self._buffer) < num:
                try:
                    new = next(self._iter)
                except StopIteration:
                    self._iter = None
                    break
                else:
                    self._total += len(new)
                    self._buffer += new

        num_buffered = len(self._buffer)
        if num >= num_buffered:
            b[:num_buffered] = self._buffer
            self._buffer.clear()
            return num_buffered
        else:
            b[:num] = memoryview(self._buffer)[:num]
            del self._buffer[:num]
            return num


def open_iterable(iterable, mode="r", buffering=-1, encoding=None, errors=None, newline=None):
    """Open an iterable of bytes to read from it using a file-like interface

    The `iterable` must be an iterable of bytes.

    mode is an optional string that specifies the mode in which the file is
    opened. It defaults to 'rt' which means open for reading in text mode. In
    text mode, if encoding is not specified the encoding used is platform
    dependent. (For reading raw bytes use binary mode and leave encoding
    unspecified.) The available modes are:

    ========= ===============================================================
    Character Meaning
    --------- ---------------------------------------------------------------
    'r'       open for reading (default)
    'b'       binary mode
    't'       text mode (default)
    ========= ===============================================================

    Iterables opened in binary mode (appending 'b' to the mode argument) return
    contents as bytes objects without any decoding. In text mode (the default),
    the contents of the iterable are returned as strings, the bytes having been
    first decoded using a platform-dependent encoding or using the specified
    encoding if given.

    buffering is an optional integer used to set the buffering policy. Pass 0
    to switch buffering off (only allowed in binary mode), and an integer > 0
    to indicate the size of a fixed-size chunk buffer. When no buffering
    argument is given, `io.DEFAULT_BUFFER_SIZE` will be used. On many systems,
    the buffer will typically be 4096 or 8192 bytes long.

    encoding is the str name of the encoding used to decode or encode the
    file. This should only be used in text mode. The default encoding is
    platform dependent, but any encoding supported by Python can be
    passed. See the codecs module for the list of supported encodings.

    errors is an optional string that specifies how encoding errors are to
    be handled---this argument should not be used in binary mode. Pass
    'strict' to raise a ValueError exception if there is an encoding error
    (the default of None has the same effect), or pass 'ignore' to ignore
    errors. Note that ignoring encoding errors can lead to data loss.
    See the documentation for codecs.register for a list of the permitted
    encoding error strings.

    newline is a string controlling how universal newlines works (it only
    applies to text mode). It can be None, '', '\n', '\r', and '\r\n'. It works
    as follows:

    * On input, if newline is None, universal newlines mode is
      enabled. Lines in the input can end in '\n', '\r', or '\r\n', and
      these are translated into '\n' before being returned to the
      caller. If it is '', universal newline mode is enabled, but line
      endings are returned to the caller untranslated. If it has any of
      the other legal values, input lines are only terminated by the given
      string, and the line ending is returned to the caller untranslated.

    * On output, if newline is None, any '\n' characters written are
      translated to the system default line separator, os.linesep. If
      newline is '', no translation takes place. If newline is any of the
      other legal values, any '\n' characters written are translated to
      the given string.

    open_iterable() returns a file object whose type depends on the mode, and
    through which the standard file operations such as read() are performed.
    When open_iterable() is used to open an iterable in a text mode ('rt'), it
    returns an io.TextIOWrapper. When used to open an iterable in a binary
    mode, the returned class varies: For unbuffered access, a RawIterableReader
    is returned and in buffered mode it returns an io.BufferedReader.
    """
    # This function is modeled after `io.open`, found in `Lib/_pyio.py`

    modes = set(mode)
    if modes - set("rtb") or len(mode) > len(modes):
        raise ValueError("invalid mode: '{}'".format(mode))

    reading = "r" in modes
    binary = "b" in modes
    text = "t" in modes or (reading and not binary)

    if not reading:
        raise ValueError("Must specify read mode")
    if text and binary:
        raise ValueError("can't have text and binary mode at once")
    if binary and encoding is not None:
        raise ValueError("binary mode doesn't take an encoding argument")
    if binary and errors is not None:
        raise ValueError("binary mode doesn't take an errors argument")
    if binary and newline is not None:
        raise ValueError("binary mode doesn't take a newline argument")
    if text and buffering == 0:
        raise ValueError("can't have unbuffered text I/O")

    ret = RawIterableReader(iterable)
    try:
        if buffering == 0:
            # unbuffered binary mode
            return ret

        if buffering < 0:
            buffering = io.DEFAULT_BUFFER_SIZE

        ret = io.BufferedReader(ret, buffering)

        if binary:
            # buffered binary mode
            return ret

        # buffered text mode
        ret = io.TextIOWrapper(ret, encoding, errors, newline)
        ret.mode = mode
        return ret
    except:
        ret.close()
        raise
