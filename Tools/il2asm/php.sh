#!/usr/bin/env bash
# php.sh - translate the user server, assemble it, link and run the request matrix.
#
#   ./php.sh            # regenerate UserServer/server.php.S, assemble, run
#   ./php.sh --check    # UserServer/server.php.S is already up to date; just verify
#
# The harness drives the generated assembly through php_execute; the script does
# the real routing, token minting, state updates, counting, listing and search.
# The session file is a process-local buffer, so nothing on disk is touched.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"
OUT="$HERE/build/php"
mkdir -p "$OUT"

cd "$HERE"

if [[ "${1:-}" != "--check" ]]; then
    echo "[1/4] translating archive/UserServer -> UserServer"
    python3 -m il2asm.php "$ROOT/archive/UserServer" -o "$ROOT/UserServer" \
        | sed 's/^/      /'
fi

echo "[2/4] assembling UserServer/server.php.S"
gcc -c -o "$OUT/server_php.o" "$ROOT/UserServer/server.php.S"
echo "      1 module, 0 failures"

echo "[3/4] linking the request harness"
gcc -O1 -Wall -Wextra -o "$OUT/php_server" \
    "$HERE/tests/php_server.c" \
    "$HERE/shim/php.c" \
    "$OUT/server_php.o"

echo "[4/4] running"
"$OUT/php_server" >"$OUT/requests.txt"

python3 - "$OUT/requests.txt" <<'PY'
import re
import sys

text = open(sys.argv[1], encoding="utf-8").read()
if "all php server checks passed" not in text:
    print(text)
    sys.exit("harness did not pass")

required = [
    'GET /token -> 200 {"token":"',
    'GET /count (empty) -> 200 {"type":"user_count","count":0}',
    'POST /set_status -> 200 {"success":true,"online":true,"total_online":1}',
    'GET /count (one online) -> 200 {"type":"user_count","count":1}',
    'GET /list -> 200 {"online_count":1,"users":[{"display_name":"Alice A"',
    'GET /search?q=ALI -> 200 {"online_count":1,"users":[{"display_name":"Alice A"',
    'POST /ping -> 200 {"success":true,"online":true,',
]
missing = [line for line in required if line not in text]
if missing:
    for line in missing:
        print("MISSING:", line)
    sys.exit(1)

token = re.search(r'"token":"([0-9a-f]+)"', text)
if not token or len(token.group(1)) != 256:
    sys.exit("token is not 256 lowercase hex characters")

print(f"      {text.count(' -> ')} requests, all assertions passed")
print("      tokens, state, counts, listing, search and error paths verified")
PY

echo "PASS: $OUT/requests.txt"
