<?php
/*
 * Skymu PHP 7.4+ user count server
 *
 * Endpoints:
 *   GET  /token
 *   POST /set_status
 *   POST /ping
 *   GET  /users
 *   GET  /count
 *
 */

define('PING_TIMEOUT', 70);
define('STATE_FILE', __DIR__ . '/data/sessions.json');

function send_json($data, $status = 200)
{
    http_response_code($status);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($data, JSON_UNESCAPED_SLASHES);
    exit;
}

function read_json_body()
{
    $raw = file_get_contents('php://input');
    $data = json_decode($raw, true);

    if (!is_array($data)) {
        send_json(array('error' => 'Invalid JSON'), 400);
    }

    return $data;
}

function with_state($callback)
{
    $directory = dirname(STATE_FILE);

    if (!is_dir($directory) && !mkdir($directory, 0755, true)) {
        send_json(array('error' => 'Could not create data directory'), 500);
    }

    $handle = fopen(STATE_FILE, 'c+');
    if ($handle === false) {
        send_json(array('error' => 'Could not open session storage'), 500);
    }

    if (!flock($handle, LOCK_EX)) {
        fclose($handle);
        send_json(array('error' => 'Could not lock session storage'), 500);
    }

    rewind($handle);
    $contents = stream_get_contents($handle);
    $sessions = json_decode($contents, true);

    if (!is_array($sessions)) {
        $sessions = array();
    }

    $result = $callback($sessions);

    rewind($handle);
    ftruncate($handle, 0);
    fwrite($handle, json_encode($sessions, JSON_UNESCAPED_SLASHES));
    fflush($handle);

    flock($handle, LOCK_UN);
    fclose($handle);

    return $result;
}

function cleanup_inactive(&$sessions)
{
    $now = time();

    foreach ($sessions as &$session) {
        if (!empty($session['online']) &&
            ($now - (isset($session['last_ping']) ? $session['last_ping'] : 0)) > PING_TIMEOUT) {
            $session['online'] = false;
        }
    }
    unset($session);
}

function get_online_count_from($sessions)
{
    $count = 0;

    foreach ($sessions as $session) {
        if (!empty($session['online'])) {
            $count++;
        }
    }

    return $count;
}

function get_session_token($data)
{
    if (empty($data['token']) || !is_string($data['token'])) {
        send_json(array('error' => 'Missing token field'), 400);
    }

    return $data['token'];
}

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(204);
    exit;
}

$method = $_SERVER['REQUEST_METHOD'];
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

if (strpos($path, '/userver') === 0) {
    $path = substr($path, strlen('/userver'));
}

$path = rtrim($path, '/');
if ($path === '') {
    $path = '/';
}

/* GET /token */
if ($method === 'GET' && $path === '/token') {
    $token = bin2hex(random_bytes(128));

    with_state(function (&$sessions) use ($token) {
        $sessions[$token] = array(
            'display_name' => null,
            'username' => null,
            'plugin' => null,
            'skymu_build_codename' => null,
            'skymu_build_version' => null,
            'online' => false,
            'last_ping' => time()
        );

        return true;
    });

    send_json(array('token' => $token));
}

/* POST /set_status */
if ($method === 'POST' && $path === '/set_status') {
    $data = read_json_body();

    if (!isset($data['token']) || !array_key_exists('online', $data)) {
        send_json(array('error' => 'Missing token or online field'), 400);
    }

    if (!is_bool($data['online'])) {
        send_json(array('error' => 'The online field must be a boolean'), 400);
    }

    $result = with_state(function (&$sessions) use ($data) {
        cleanup_inactive($sessions);

        $token = $data['token'];
        if (!is_string($token) || !isset($sessions[$token])) {
            return array('error' => 'Invalid token', 'status' => 401);
        }

        $session = &$sessions[$token];
        $session['display_name'] = isset($data['display_name']) ? $data['display_name'] : null;
        $session['username'] = isset($data['username']) ? $data['username'] : null;
        $session['identifier'] = isset($data['identifier']) ? $data['identifier'] : null;
        $session['plugin'] = isset($data['plugin']) ? $data['plugin'] : null;
        $session['skymu_build_codename'] = isset($data['skymu_build_codename']) ? $data['skymu_build_codename'] : null;
        $session['skymu_build_version'] = isset($data['skymu_build_version']) ? $data['skymu_build_version'] : null;
        $session['online'] = $data['online'];
        $session['last_ping'] = time();
        unset($session);

        return array(
            'success' => true,
            'online' => $data['online'],
            'total_online' => get_online_count_from($sessions)
        );
    });

    if (isset($result['status'])) {
        send_json(array('error' => $result['error']), $result['status']);
    }

    send_json($result);
}

/* POST /ping */
if ($method === 'POST' && $path === '/ping') {
    $data = read_json_body();
    $token = get_session_token($data);

    $result = with_state(function (&$sessions) use ($token) {
        cleanup_inactive($sessions);

        if (!isset($sessions[$token])) {
            return array('error' => 'Invalid token', 'status' => 401);
        }

        $sessions[$token]['last_ping'] = time();

        return array(
            'success' => true,
            'online' => $sessions[$token]['online'],
            'timestamp' => microtime(true)
        );
    });

    if (isset($result['status'])) {
        send_json(array('error' => $result['error']), $result['status']);
    }

    send_json($result);
}

/* GET /list */
if ($method === 'GET' && $path === '/list') {
    $result = with_state(function (&$sessions) {
        cleanup_inactive($sessions);
        $users = array();

        foreach ($sessions as $session) {
            if (!empty($session['online'])) {
                $users[] = array(
                    'display_name' => isset($session['display_name']) ? $session['display_name'] : null,
                    'username' => isset($session['username']) ? $session['username'] : null,
                    'plugin' => isset($session['plugin']) ? $session['plugin'] : null,
                    'skymu_build_codename' => isset($session['skymu_build_codename']) ? $session['skymu_build_codename'] : null,
                    'skymu_build_version' => isset($session['skymu_build_version']) ? $session['skymu_build_version'] : null,
                    'online' => true,
                    'last_ping' => $session['last_ping']
                );
            }
        }

        return array(
            'online_count' => count($users),
            'users' => $users,
            'timestamp' => microtime(true)
        );
    });

    send_json($result);
}

if ($method === 'GET' && $path === '/count') {
    $count = with_state(function (&$sessions) {
        cleanup_inactive($sessions);
        return get_online_count_from($sessions);
    });

    send_json(array(
        'type' => 'user_count',
        'count' => $count
    ));
}

if ($path === '/ws') {
    send_json(array(
        'error' => 'WebSockets are not supported by this PHP shared-hosting version. Poll GET /count instead.'
    ), 501);
}

send_json(array('error' => 'Not found'), 404);
?>
