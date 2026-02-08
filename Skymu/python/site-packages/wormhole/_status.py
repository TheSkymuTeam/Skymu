from attrs import frozen


@frozen
class Disconnected:
    pass


@frozen
class Connecting:
    url: str


@frozen
class Connected:
    url: str


@frozen
class NoPeer:
    pass


@frozen
class ConnectingPeer:
    pass  # are more details relevant?


@frozen
class ConnectedPeer:
    pass  # are more details relevant?


# XXX union types need python 3.10 or later
ConnectionStatus = Disconnected | Connecting | Connected
PeerConnection = NoPeer | ConnectingPeer | ConnectedPeer


@frozen
class WormholeStatus(object):
    """
    Represents the current status of a wormhole for use by the outside
    """

    # are we connected to the Mailbox Server
    mailbox_connection: ConnectionStatus = Disconnected()

    # XXX there isn't really this for pure "wormholes" -- only the
    # file-transfer v1 Transit or Dilation know about "connection to a
    # real peer"
    # we believe we have communication with our peer
    peer_connection: PeerConnection = NoPeer()

    # there's the notion of "we have a mailbox", separate from the
    # above; worth revealing?


@frozen
class DilationStatus(object):
    """
    Represents the current status of a Dilated wormhole
    """

    # current Dilation phase (ever increasing, aka "generation")
    phase: int = -1;

    # are we connected to the Mailbox Server
    # XXX should this (and peer_connection) be a WormholeStatus instead?
    mailbox: ConnectionStatus = Disconnected()

    # we believe we have communication with our peer
    peer_connection: PeerConnection = NoPeer()

    # there's the notion of "we have a mailbox", separate from the
    # above; worth revealing?

    # "hints"? "active_hint"?
    # "are we re-connecting" can be inferred from "mailbox" + "phase"


# worth having an Interface for "there is a new status"? it's just a
# callable that takes a WormholeStatus ...
