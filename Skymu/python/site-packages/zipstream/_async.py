

__all__ += ["AsyncZipStream"]

import asyncio
try:
    from asyncio import to_thread
except ImportError:
    # backport asyncio.to_thread from Python 3.9
    from contextvars import copy_context
    async def to_thread(func, /, *args, **kwargs):
        loop = asyncio.get_running_loop()
        return await loop.run_in_executor(
            None,
            functools.partial(copy_context().run, func, *args, **kwargs)
        )

async def _to_async_iter(it):
    SENTINEL = object()
    i = iter(it)
    while True:
        x = await to_thread(next, i, SENTINEL)
        if x is SENTINEL:
            break
        yield x

def _make_delegate_call(name):
    @functools.wraps(getattr(ZipStream, name))
    def method(self, *args, **kwargs):
        return getattr(self._zip, name)(*args, **kwargs)
    return method

def _delegate(*fcns):
    def cls_builder(cls):
        for name in fcns:
            setattr(cls, name, _make_delegate_call(name))
        return cls
    return cls_builder

def _make_delegate_property(name):
    return property(
        fget=functools.wraps(getattr(ZipStream, name))(lambda s: getattr(s._zip, name)),
        fset=lambda s, v: setattr(s._zip, name, v)
    )

def _delegate_property(*fcns):
    def cls_builder(cls):
        for name in fcns:
            setattr(cls, name, _make_delegate_property(name))
        return cls
    return cls_builder


@_delegate("__len__", "__bool__", "__bytes__", "is_empty", "num_queued", "num_streamed", "mkdir", "info_list")
@_delegate_property("sized", "last_modified", "comment")
class AsyncZipStream:
    """An asynchronous write-only zip that is generated from source files/data
    as it's asynchronously iterated over.

    Ideal for situations where a zip file needs to be dynamically generated
    without using temporary files (ie: web applications).

    Implementation note: This class is an implementation of the synchronous
    ZipStream class that delegates the work to a threadpool.
    """

    @functools.wraps(ZipStream.__init__)
    def __init__(self, *args, **kwargs):
        self._zip = ZipStream(*args, **kwargs)

    async def __aiter__(self):
        """Asynchronously generate zipped data from the added files/data"""
        async for x in _to_async_iter(self._zip):
            yield x

    @classmethod
    @functools.wraps(ZipStream.from_path)
    async def from_path(cls, path, *, compress_type=ZIP_STORED, compress_level=None, sized=None, **kwargs):
        if sized is None:
            sized = compress_type == ZIP_STORED

        z = cls(
            compress_type=compress_type,
            compress_level=compress_level,
            sized=sized
        )
        await z.add_path(path, **kwargs)
        return z

    @functools.wraps(ZipStream.add_path)
    async def add_path(self, *args, **kwargs):
        return await to_thread(self._zip.add_path, *args, **kwargs)

    @functools.wraps(ZipStream.add)
    async def add(self, data, *args, **kwargs):
        return await to_thread(self._zip.add, data, *args, **kwargs)
