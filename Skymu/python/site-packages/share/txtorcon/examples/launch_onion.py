#!/usr/bin/env python

from twisted.internet import defer, task, endpoints, error
from twisted.web import server, resource

import txtorcon
import sys

class Simple(resource.Resource):
    """
    A really simple Web site.
    """
    isLeaf = True

    def render_GET(self, request):
        return b"<html>Hello, world! I'm a hidden service!</html>"


async def main(reactor):
    print("main", reactor)
    tor = await txtorcon.launch(
        reactor,
        stdout=sys.stdout,
        stderr=sys.stderr,
        progress_updates=print,
        control_port="unix:/tmp/testing/torcontrolfoo",
        data_directory="/tmp/tordatatmp",
    )
    print(tor)

    # create ephemeral service listening on "80" publically, and a
    # random local port.
    for _ in range(2):
        onion_service = await tor.create_onion_service([80], progress=print) # , await_all_uploads=True,
        print(f"service: http://{onion_service.hostname}")
        for port in onion_service.ports:
            print("  ", port)
            ep = endpoints.serverFromString(reactor, "tcp:{}".format(port.split()[1].split(":")[1]))
            port = await ep.listen(server.Site(Simple()))
            print(port)

    await defer.Deferred()  # wait forever


if __name__ == "__main__":
    def run(reactor):
        return defer.ensureDeferred(main(reactor))
    task.react(run)
