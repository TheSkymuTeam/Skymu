/* Drive the assembly-translated Skymu user server through a request matrix.
 *
 * The translated script lives in ../../UserServer/server.php.S; `php_execute`
 * runs one request and records status and body instead of speaking HTTP. This
 * harness asserts that the generated code performs the real routing, token
 * minting, state updates, counting, listing, searching and error paths.
 */
#include "../shim/php.h"

#include <stdio.h>
#include <string.h>

extern void php_main(void);

static int failures;

static int find(const char *hay, const char *needle)
{
    return strstr(hay, needle) != NULL;
}

static void expect(int cond, const char *what)
{
    if (!cond) {
        printf("FAIL %s\n", what);
        failures++;
    }
}

static void show(const char *label)
{
    printf("  %s -> %ld %s\n", label, php_response_status(),
           php_response_body());
}

static const char *body(void)
{
    return php_response_body();
}

/* Pull the minted session token out of {"token":"..."}. */
static void token_from_body(char *out, size_t cap)
{
    const char *b = body();
    const char *p = strstr(b, "\"token\":\"");
    out[0] = '\0';
    if (!p) {
        return;
    }
    p += 9;
    size_t i = 0;
    while (*p && *p != '"' && i + 1 < cap) {
        out[i++] = *p++;
    }
    out[i] = '\0';
}

static long run(const char *method, const char *uri, const char *body_text,
                const char *query)
{
    return php_execute(php_main, method, uri, body_text, query);
}

int main(void)
{
    char token[512];
    char payload[1024];

    /* GET /token mints a session. */
    expect(run("GET", "/token", "", "") == 200, "GET /token status");
    token_from_body(token, sizeof token);
    expect(strlen(token) == 256, "GET /token returns 256 hex chars");
    for (const char *p = token; *p; p++) {
        expect((*p >= '0' && *p <= '9') || (*p >= 'a' && *p <= 'f'),
               "token is lowercase hex");
        if (*p < '0' || (*p > '9' && *p < 'a') || *p > 'f') {
            break;
        }
    }
    show("GET /token");
    if (!token[0]) {
        printf("no token; aborting\n");
        return 1;
    }

    /* A unique token also works under the /userver mount prefix. */
    expect(run("GET", "/userver/token", "", "") == 200,
           "GET /userver/token strips prefix");

    /* OPTIONS is a bare 204. */
    expect(run("OPTIONS", "/token", "", "") == 204, "OPTIONS 204");

    /* GET /count starts at zero online. */
    expect(run("GET", "/count", "", "") == 200, "GET /count status");
    expect(find(body(), "\"type\":\"user_count\""), "count type");
    expect(find(body(), "\"count\":0"), "count is 0 before set_status");
    show("GET /count (empty)");

    /* POST /set_status turns the session online with profile fields. */
    snprintf(payload, sizeof payload,
             "{\"token\":\"%s\",\"online\":true,\"username\":\"alice\","
             "\"display_name\":\"Alice A\",\"plugin\":\"skymu\","
             "\"skymu_build_codename\":\"nebula\","
             "\"skymu_build_version\":\"0.4\"}",
             token);
    expect(run("POST", "/set_status", payload, "") == 200, "POST /set_status status");
    expect(find(body(), "\"success\":true"), "set_status success");
    expect(find(body(), "\"total_online\":1"), "set_status total_online 1");
    show("POST /set_status");

    /* Count and list now see one online user. */
    expect(run("GET", "/count", "", "") == 200, "GET /count status 2");
    expect(find(body(), "\"count\":1"), "count is 1");
    show("GET /count (one online)");

    expect(run("GET", "/list", "", "") == 200, "GET /list status");
    expect(find(body(), "\"online_count\":1"), "list online_count");
    expect(find(body(), "\"username\":\"alice\""), "list username");
    expect(find(body(), "\"display_name\":\"Alice A\""), "list display_name");
    expect(find(body(), "\"plugin\":\"skymu\""), "list plugin");
    show("GET /list");

    /* Search is case-insensitive across username and display name. */
    expect(run("GET", "/search", "", "q=ALI") == 200, "GET /search status");
    expect(find(body(), "\"online_count\":1"), "search matches ALI");
    expect(find(body(), "\"username\":\"alice\""), "search returns alice");
    show("GET /search?q=ALI");

    expect(run("GET", "/search", "", "q=zzz") == 200, "GET /search status 2");
    expect(find(body(), "\"online_count\":0"), "search zzz finds nobody");

    expect(run("GET", "/search", "", "") == 400, "GET /search without q is 400");

    /* Ping refreshes last_ping and reports the online flag. */
    snprintf(payload, sizeof payload, "{\"token\":\"%s\"}", token);
    expect(run("POST", "/ping", payload, "") == 200, "POST /ping status");
    expect(find(body(), "\"success\":true"), "ping success");
    expect(find(body(), "\"online\":true"), "ping reports online");
    expect(find(body(), "\"timestamp\":"), "ping timestamp");
    show("POST /ping");

    /* Turning the session offline drops it out of the counts. */
    snprintf(payload, sizeof payload, "{\"token\":\"%s\",\"online\":false}", token);
    expect(run("POST", "/set_status", payload, "") == 200, "set_status offline");
    expect(find(body(), "\"total_online\":0"), "total_online drops to 0");
    expect(run("GET", "/count", "", "") == 200, "count after offline");
    expect(find(body(), "\"count\":0"), "count is 0 after offline");

    /* Error paths. */
    expect(run("POST", "/set_status", "{\"token\":\"bogus\",\"online\":true}", "") == 401,
           "unknown token is 401");
    expect(find(body(), "\"error\":\"Invalid token\""), "401 body");
    expect(run("POST", "/set_status", "not json", "") == 400,
           "invalid JSON is 400");
    expect(find(body(), "\"error\":\"Invalid JSON\""), "invalid JSON body");
    expect(run("POST", "/ping", "{}", "") == 400, "ping without token is 400");
    expect(find(body(), "\"error\":\"Missing token field\""), "missing token body");
    expect(run("POST", "/set_status", "{\"token\":\"x\"}", "") == 400,
           "set_status without online is 400");
    expect(find(body(), "\"error\":\"Missing token or online field\""),
           "missing online body");
    expect(run("POST", "/set_status", "{\"token\":\"x\",\"online\":\"yes\"}", "") == 400,
           "non-boolean online is 400");
    expect(find(body(), "\"error\":\"The online field must be a boolean\""),
           "non-boolean body");

    /* Unknown route and unsupported WebSocket route. */
    expect(run("GET", "/ws", "", "") == 501, "GET /ws is 501");
    expect(find(body(), "WebSockets are not supported"), "ws body");
    expect(run("GET", "/nope", "", "") == 404, "GET /nope is 404");
    expect(find(body(), "\"error\":\"Not found\""), "404 body");

    /* Trailing slashes are normalised. */
    expect(run("GET", "/count/", "", "") == 200, "trailing slash is trimmed");

    if (failures) {
        printf("%d checks failed\n", failures);
        return 1;
    }
    printf("all php server checks passed\n");
    return 0;
}
