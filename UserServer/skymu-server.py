import asyncio
import json
import secrets
import time
from aiohttp import web, WSMsgType
import aiohttp_cors

# this stores the user sessions currently on the skymu servers
user_sessions = {}

# timeout for inactive users, this is just a double check if the client doesn't call the ping
PING_TIMEOUT = 70 # adds a grace period of 10 seconds just in case the client is a bit late on the ping or something, it's not meant to be exact or anything

# websocket connections for broadcasting
websocket_connections = set()

# generates a token for the skymu user, this is not meant to be secure
def generate_token():
    return secrets.token_hex(128)

# gets the online user count of all skymu sessions from user_sessions
def get_online_count():
    return sum(session["online"] for session in user_sessions.values())

# small helper so we don’t repeat token validation everywhere
def get_session(token):
    return user_sessions.get(token)

# this broadcasts the user count to the websocket
async def broadcast_user_count():
    count = get_online_count()
    message = json.dumps({"type": "user_count", "count": count})
    disconnected = set()
    for ws in websocket_connections:
        try:
            await ws.send_str(message)
        except Exception:
            disconnected.add(ws)
    websocket_connections.difference_update(disconnected)

# this cleans up all of the inactive users who haven't pinged the skymu server in about a minute
# this is useful for developers since when you terminate the app in vs it obviously doesn't call
# the onclose function and this just makes it nicer lol
async def cleanup_inactive_users():
    while True:
        await asyncio.sleep(30)
        now = time.time()
        broadcast_needed = False
        for session in user_sessions.values():
            if session["online"] and (now - session["last_ping"]) > PING_TIMEOUT:
                session["online"] = False
                broadcast_needed = True
        if broadcast_needed:
            await broadcast_user_count()

# this is where the rest api starts btw
# this gets the token using /token, very simple
async def get_token(request):
    token = generate_token()
    user_sessions[token] = {
        "display_name": None,
        "username": None,
        "plugin": None,
        "skymu_build_codename": None,
        "skymu_build_version": None,
        "online": False,
        "last_ping": time.time()
    }
    return web.json_response({"token": token})

# this sets the status of a user on the skymu servers
# again, very simple like the get token request.
async def set_status(request):
    try:
        data = await request.json()

        token = data.get("token")
        online = data.get("online")

        if not token or online is None:
            return web.json_response(
                {"error": "Missing token or online field"},
                status=400
            )

        session = get_session(token)
        if not session:
            return web.json_response(
                {"error": "Invalid token"},
                status=401
            )

        old_status = session["online"]

        session["display_name"] = data.get("display_name")
        session["username"] = data.get("username")
        session["identifier"] = data.get("identifier")
        session["plugin"] = data.get("plugin")
        session["skymu_build_codename"] = data.get("skymu_build_codename")
        session["skymu_build_version"] = data.get("skymu_build_version")

        session["online"] = online
        session["last_ping"] = time.time()

        if old_status != online:
            await broadcast_user_count()

        return web.json_response({
            "success": True,
            "online": online,
            "total_online": get_online_count()
        })

    except json.JSONDecodeError:
        return web.json_response({"error": "Invalid JSON"}, status=400)
    except Exception as e:
        return web.json_response({"error": str(e)}, status=500)

# this is the ping request to keep the skymu client alive
# again, like i explained earlier this is useful for developers and such cuz it terminates the
# application, so it doesn't hit the onclose method correctly
async def ping(request):
    try:
        data = await request.json()
        token = data.get("token")
        if not token:
            return web.json_response(
                {"error": "Missing token field"},
                status=400
            )
        session = get_session(token)
        if not session:
            return web.json_response(
                {"error": "Invalid token"},
                status=401
            )
        session["last_ping"] = time.time()
        return web.json_response({
            "success": True,
            "online": session["online"],
            "timestamp": time.time()
        })
    except json.JSONDecodeError:
        return web.json_response({"error": "Invalid JSON"}, status=400)
    except Exception as e:
        return web.json_response({"error": str(e)}, status=500)

# do you really need me to explain this?
async def get_online_users(request):
    users = []
    for token, session in user_sessions.items():
        if session["online"]:
            users.append({
                "display_name": session["display_name"],
                "username": session["username"],
                "plugin": session["plugin"],
                "skymu_build_codename": session["skymu_build_codename"],
                "skymu_build_version": session["skymu_build_version"],
                "online": session["online"],
                "last_ping": session["last_ping"]
            })

    return web.json_response({
        "online_count": len(users),
        "users": users,
        "timestamp": time.time()
    })

# this is where websocket handling happens btw
# handles the websocket bs, i barely know what this does this is poorly written lolll
async def websocket_handler(request):
    ws = web.WebSocketResponse()
    await ws.prepare(request)
    websocket_connections.add(ws)
    token = None
    try:
        msg = await ws.receive()
        if msg.type == WSMsgType.TEXT:
            data = json.loads(msg.data)
            token = data.get("token")
            if not token or token not in user_sessions:
                await ws.close()
                return ws  # <- always return
            ws.token = token
            user_sessions[token]["online"] = True
            user_sessions[token]["last_ping"] = time.time()
            await broadcast_user_count()
        await ws.send_str(json.dumps({
            "type": "user_count",
            "count": get_online_count()
        }))
        async for msg in ws:
            if msg.type == WSMsgType.TEXT:
                if msg.data == "close":
                    await ws.close()
                else:
                    data = json.loads(msg.data)
                    if data.get("action") == "get_count":
                        await ws.send_str(json.dumps({
                            "type": "user_count",
                            "count": get_online_count()
                        }))
    finally:
        websocket_connections.discard(ws)
        if hasattr(ws, "token") and ws.token in user_sessions:
            user_sessions[ws.token]["online"] = False
            await broadcast_user_count()
    return ws

# starts background tasks for shit
async def on_startup(app):
    app["cleanup_task"] = asyncio.create_task(cleanup_inactive_users())

# cleans background tasks for shit
async def on_cleanup(app):
    app["cleanup_task"].cancel()
    await app["cleanup_task"]

# logging middleware for incoming requests
@web.middleware
async def log_requests_middleware(request, handler):
    try:
        body = await request.text()
    except Exception:
        body = "<could not read body>"

    print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] {request.method} {request.path} -> Body: {body}")
    response = await handler(request)
    if response is None:
        # fallback if handler fails to return a response
        return web.json_response({"error": "Handler did not return a response"}, status=500)
    return response

# creates the api and ws servers
def create_app():
    app = web.Application(middlewares=[log_requests_middleware])
    cors = aiohttp_cors.setup(app, defaults={
        "*": aiohttp_cors.ResourceOptions(
            allow_credentials=True,
            expose_headers="*",
            allow_headers="*",
            allow_methods="*"
        )
    })
    routes = [
        app.router.add_get("/token", get_token),
        app.router.add_post("/set_status", set_status),
        app.router.add_post("/ping", ping),
        app.router.add_get("/users", get_online_users),
        app.router.add_get("/ws", websocket_handler),
    ]
    for route in routes:
        cors.add(route)
    app.on_startup.append(on_startup)
    app.on_cleanup.append(on_cleanup)
    return app

# the actual starting of the server
if __name__ == "__main__":
    web.run_app(create_app(), host="0.0.0.0", port=55968) # For production, this is the default port for Skymu
#   web.run_app(create_app(), host="0.0.0.0", port=5000)