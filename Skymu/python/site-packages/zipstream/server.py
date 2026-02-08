#!/usr/bin/env python

"""
Implements a clone of the built in http.server functionality but adds the
ability to download multiple files and directories as zip files.

Run `zipserver --help` or `python -m zipstream.server --help` for details

WARNING: zipstream.server is not recommended for production. It only implements
basic security checks.
"""

import contextlib
import functools
import html
from http import HTTPStatus
import http.server
import io
import os
import sys
import urllib

from zipstream.ng import ZipStream


class ZippingHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):

    def list_directory(self, path):
        """
        A clone of `http.server.SimpleHTTPRequestHandler.list_directory` method
        with slight modifications to add checkboxes beside each entry and a
        download button at the bottom that submits the checked files as a POST
        request.
        """
        # Additions to the original `list_directory` are marked with `ADDED`
        # comments.

        try:
            filelist = os.listdir(path)
        except OSError:
            self.send_error(HTTPStatus.NOT_FOUND, "No permission to list directory")
            return None

        try:
            displaypath = urllib.parse.unquote(self.path, errors='surrogatepass')
        except UnicodeDecodeError:
            displaypath = urllib.parse.unquote(path)

        displaypath = html.escape(displaypath, quote=False)
        title = 'Directory listing for %s' % displaypath
        enc = sys.getfilesystemencoding()

        r = []
        r.append('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">')
        r.append('<html>')
        r.append('<head>')
        r.append('<meta http-equiv="Content-Type" content="text/html; charset=%s">' % enc)
        r.append('<title>%s</title>' % title)
        r.append('</head>')
        r.append('<body>')
        r.append('<h1>%s</h1>' % title)
        r.append('<hr>')
        r.append('<form method="post">')  # ADDED
        r.append('<ul>')
        for name in sorted(filelist, key=lambda x: x.lower()):
            fullname = os.path.join(path, name)
            displayname = linkname = name
            # Append / for directories or @ for symbolic links
            if os.path.isdir(fullname):
                displayname = name + "/"
                linkname = name + "/"
            if os.path.islink(fullname):
                displayname = name + "@"
                # Note: a link to a directory displays with @ and links with /

            linkname = urllib.parse.quote(linkname, errors='surrogatepass')
            displayname = html.escape(displayname, quote=False)
            r.append(
                '<li>'
                '<input type="checkbox" name="files" value="{0}"/> '  # ADDED
                '<a href="{0}">{1}</a></li>'
                ''.format(linkname, displayname)
            )
        r.append('</ul>')
        r.append('<hr>')
        r.append('<button>Download zip of checked files</button>')  # ADDED
        r.append('</form>')  # ADDED

        r.append('</body>')
        r.append('</html>')

        encoded = '\n'.join(r).encode(enc, 'surrogateescape')
        f = io.BytesIO()
        f.write(encoded)
        f.seek(0)
        self.send_response(HTTPStatus.OK)
        self.send_header("Content-type", "text/html; charset=%s" % enc)
        self.send_header("Content-Length", str(len(encoded)))
        self.end_headers()
        return f

    def do_POST(self):
        """Return a zip of all the files specified in the POST data as a
        stream"""

        # Get the content length so the POST data can be read
        try:
            content_length = int(self.headers.get('Content-Length'))
            if not content_length:
                raise ValueError()
        except (KeyError, ValueError, TypeError):
            self.send_error(HTTPStatus.BAD_REQUEST, "Invalid content length")
            return

        # Read and decode the POST data
        enc = sys.getfilesystemencoding()
        try:
            post_data = self.rfile.read(content_length).decode(enc)
        except UnicodeDecodeError:
            self.send_error(HTTPStatus.BAD_REQUEST, "Invalid encoding of POST data")
            return

        # Parse the filename(s) to add to the zip out of the POST data
        try:
            data = urllib.parse.parse_qs(post_data, strict_parsing=True)
        except ValueError:
            self.send_error(HTTPStatus.BAD_REQUEST, "No files selected")
            return

        # Generate the ZipStream from the POSTed filenames and send it as the
        # response body.
        # Note that since the ZipStream is sized, the total size of it can be
        # calulated before starting to stream it. This is used to set the
        # "Content-Length" header, giving the client the ability to show a
        # download progress bar, estimate the time remaining, etc.
        zs = ZipStream(sized=True)
        zs.comment = "Generated by https://github.com/pR0Ps/zipstream-ng"
        for x in data.get("files") or []:
            with contextlib.suppress(OSError, ValueError):
                zs.add_path(self.translate_path(os.path.join(self.path, x)))

        # Don't send back an empty zip
        if not zs:
            self.send_error(HTTPStatus.BAD_REQUEST, "No files to zip up")
            return

        # Send response headers
        self.send_response(HTTPStatus.OK)
        self.send_header("Content-Type", "application/zip")
        self.send_header("Content-Disposition", "attachment; filename=files.zip")
        self.send_header("Content-Length", len(zs))
        self.send_header("Last-Modified", zs.last_modified)
        self.end_headers()

        # Generate the data of the ZipStream as it's sent to the client
        self.wfile.writelines(zs)


def main():
    import argparse

    parser = argparse.ArgumentParser(description=(
        "Simple fileserver with support for downloading multiple files and "
        "folders as a single zip file."
    ))
    parser.add_argument(
        "--bind", "-b",
        metavar="ADDRESS",
        help="Specify alternate bind address [default: all interfaces]"
    )
    parser.add_argument(
        "--directory", "-d",
        default=os.getcwd(),
        help="Specify alternative directory [default:current directory]"
    )
    parser.add_argument(
        "port",
        action="store",
        default=8000,
        type=int,
        nargs="?",
        help="Specify alternate port [default: 8000]"
    )
    args = parser.parse_args()

    http.server.test(
        HandlerClass=functools.partial(
            ZippingHTTPRequestHandler,
            directory=args.directory
        ),
        ServerClass=http.server.ThreadingHTTPServer,
        port=args.port,
        bind=args.bind
    )


if __name__ == "__main__":
    main()
