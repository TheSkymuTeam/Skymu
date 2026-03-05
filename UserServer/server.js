const http = require("http");
const { WebSocketServer } = require("ws");
const crypto = require("crypto");

const PORT = process.env.PORT || 3000;

const tokens = new Map();
const wsClients = new Set();
// token -> ws (so we can find the socket for a token and vice versa)
const tokenToWs = new Map();

// --- HTTP Server ---
const server = http.createServer((req, res) => {
  res.setHeader("Content-Type", "application/json");
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type");

  if (req.method === "OPTIONS") {
    res.writeHead(204);
    res.end();
    return;
  }

  // GET /v1/token
  if (req.method === "GET" && req.url === "/v1/token") {
    const token = crypto.randomUUID();
    tokens.set(token, { online: false, lastPing: new Date(), display_name: null, username: null, plugin: null, skymu_build_codename: null, skymu_build_version: null });
    res.writeHead(200);
    res.end(JSON.stringify({ token }));
    return;
  }

  // POST /v1/set_status
  if (req.method === "POST" && req.url === "/v1/set_status") {
    let body = "";
    req.on("data", (chunk) => (body += chunk));
    req.on("end", () => {
      try {
        const { token, online, display_name, username, plugin, skymu_build_codename, skymu_build_version } = JSON.parse(body);
        if (token && tokens.has(token)) {
          const entry = tokens.get(token);
          entry.online = online;
          if (display_name !== undefined) entry.display_name = display_name;
          if (username !== undefined) entry.username = username;
          if (plugin !== undefined) entry.plugin = plugin;
          if (skymu_build_codename !== undefined) entry.skymu_build_codename = skymu_build_codename;
          if (skymu_build_version !== undefined) entry.skymu_build_version = skymu_build_version;
          broadcastUserCount();
        }
        res.writeHead(200);
        res.end(JSON.stringify({ success: true }));
      } catch {
        res.writeHead(400);
        res.end(JSON.stringify({ error: "Invalid request" }));
      }
    });
    return;
  }

  // POST /v1/ping
  if (req.method === "POST" && req.url === "/v1/ping") {
    let body = "";
    req.on("data", (chunk) => (body += chunk));
    req.on("end", () => {
      try {
        const { token } = JSON.parse(body);
        if (token && tokens.has(token)) {
          tokens.get(token).lastPing = new Date();
        }
        res.writeHead(200);
        res.end(JSON.stringify({ success: true }));
      } catch {
        res.writeHead(400);
        res.end(JSON.stringify({ error: "Invalid request" }));
      }
    });
    return;
  }

  // GET /v1/userlist
  if (req.method === "GET" && req.url === "/v1/userlist") {
    const users = [];
    for (const [, data] of tokens) {
      if (data.online) {
        users.push({
          display_name: data.display_name,
          username: data.username,
          plugin: data.plugin,
          skymu_build_codename: data.skymu_build_codename,
          skymu_build_version: data.skymu_build_version
        });
      }
    }
    res.writeHead(200);
    res.end(JSON.stringify({ users }));
    return;
  }

  res.writeHead(404);
  res.end(JSON.stringify({ error: "Not found" }));
});

// --- WebSocket Server ---
const wss = new WebSocketServer({ server, path: "/v1/ws" });

wss.on("connection", (ws) => {
  let clientToken = null;
  wsClients.add(ws);

  ws.on("message", (data) => {
    try {
      const msg = JSON.parse(data.toString());

      if (msg.token && !clientToken) {
        clientToken = msg.token;
        // Track ws <-> token association
        tokenToWs.set(clientToken, ws);
        ws.send(JSON.stringify({ type: "user_count", count: getOnlineCount() }));
        return;
      }

      if (msg.action === "get_count") {
        ws.send(JSON.stringify({ type: "user_count", count: getOnlineCount() }));
        return;
      }
    } catch {
      // ignore malformed messages
    }
  });

  ws.on("close", () => {
    wsClients.delete(ws);

    // Primary: immediately mark user offline and remove token on disconnect
    if (clientToken && tokens.has(clientToken)) {
      tokens.delete(clientToken);
      tokenToWs.delete(clientToken);
      broadcastUserCount();
    }
  });
});

// --- Helpers ---
function getOnlineCount() {
  let count = 0;
  for (const [, data] of tokens) {
    if (data.online) count++;
  }
  return count;
}

function broadcastUserCount() {
  const msg = JSON.stringify({ type: "user_count", count: getOnlineCount() });
  for (const client of wsClients) {
    if (client.readyState === 1) {
      client.send(msg);
    }
  }
}

// Fallback: clean up stale tokens every 60 seconds (no ping in 2 minutes)
// Catches cases where WS disconnect wasn't detected cleanly
setInterval(() => {
  const cutoff = new Date(Date.now() - 2 * 60 * 1000);
  let changed = false;
  for (const [token, data] of tokens) {
    if (data.lastPing < cutoff) {
      tokens.delete(token);
      tokenToWs.delete(token);
      changed = true;
    }
  }
  if (changed) broadcastUserCount();
}, 60_000);

server.listen(PORT, () => {
  console.log(`Skymu backend running on port ${PORT}`);
});