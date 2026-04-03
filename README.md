                getSkypeAuthInfoFromRPSAccessToken(e, t, i) {
    const {
        retries: o,
        timeout: u,
        initialTime: g,
        maxTime: S,
        growFactor: f,
        jitterFactor: _
    } = s.default.dangerouslyGetS4LSisuFeatures().rpsRetryConfig;

    const C = {
        retries: o,
        timeout: t || u,
        initialTime: g,
        maxTime: S,
        growFactor: f,
        jitterFactor: _,
        priority: r.WebRequestPriority.Critical,
        authTelemetry: new d.default("RpsClient", c.ScenarioName.LoginAuth, {
            scenario: "teamsAuth",
            service: "RpsClient",
            subScenario: i
        }),
        excludeEndpointUrl: true
    };

    C.authTelemetry.begin();

    return fetch("https://teams.live.com/api/auth/v1.0/authz/consumer", {
        method: "POST",
        headers: {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:150.0) Gecko/20100101 Firefox/150.0",
            "Accept": "*/*",
            "Accept-Language": "en-US,en;q=0.9",
            "Accept-Encoding": "gzip, deflate, zstd",
            "Referer": "https://teams.live.com/v2/",
            "authorization": "Bearer EwAIBDmJBAAUNxUN/hBUaNQUarbqIDOTecxLNAMAAfpmAp07Unx/5Vom2KRpOrjdiQsqO9Uwp3wAzwkXEHKKta0O9n6X9YRIPs7lwqNod6di5v5nY58lbZ16uCy9IS3D/jtKx59x60xHRPPMg7z9xzlMlwK08QS2mKhU4uknR0ECZwPOl3KxfQ1gGTzKgkj3aViP64Nv/UqZI8RUYDjG03xSY1ScqnoesDtP3H+gB/gp9vfxkHtduQDnCGGWx0fdWp0nETUTi81yyYbkyylHEA1/BA9BTTY1wkiHlzZbboaMUjZtekBo+K5ZJYd6d0ICs+S+aNjFOAOGwUcS60F0ZJNmWZdP5eyI9ybgPg7CQhKwHJ7pnWZim4wSG/fLDD4QZgAAEJgvxlYskxh5JU9mP2cJQEHQAkhNiZn/KIGTDnCq8aPbjmrxdiPM19vppA6qEZB7M8PWgzbLNdgw2iAdo5rDllXbtdY/BCtcaQVN+72cgTP2qQtgZOG48AiwHeOxBC9grE+W54uHTzS4Y1fCKfFdwhu7h3uONebATYnHr1tNrDeG6+o+vI49zSZiLzHJ8+JMv1BM6uBM658as1nwCKq/x8mDjImp6V/sHNnxg3bzGcrnmE+WAoS+C+/fi1YzXNPDSkOJhUeJj1b8MIR07DDfsgoHhx4GHmfS4DFsh2hgEiJMfOM7pfMOGv0d+/qQfyF8sepzHtEdt2u0uP9Ffdz/A20PxJcG1Zxs/lvT2p9pCpE4CahTlX025ScNspG6VHNPYOF9wHe+GurEdaBOHbRfI9375n+M1fAE6o6/h8AD4C1EALpfoX3i8G0Qm/dZXZjvAYYO+tKf5jvldvqXQL+zZfYqR/8bWjk6f4nP9+KAl/iIeMf+WlYCB8nA8rKfeL2HJIMLqVJKMqNpYmsabiRd5We4MURDIUVPv/IjyZZkbNVGJUth8j/0SkI8sz7ignv8HzWaT9SCVHR29O0/Ozc1NaYnd+I7Ys+DGQ7xkOLVbtaAAeRaCXW1HknD9DAFeOjbILWVdckW0XHOGqlK/ujzLh0ja0pW5DDeiYcC0lDnhpWcUJSbbk3iKZA8w/l8rrhj/e+7C3cXeoP8EFFy1BWQydgbP7JC6kidt9dYzxQmy2fId9xZrIwLzDbshJgmPD7RQOxIh3Q/jmbm1ejxNXmK2K46G3+MpQaT/xR5Sd9zD8WCd0GhuMqetSrDAIKFz8Byg3s0GvXOVIXtvybpvseJGtVNNR9MknE/iSF1KXpMLs7HnaONJY/MONnhS4Nh+/nlvAc81eYsiu+U2WD6Y2q8HhPSDCgMbr6i0Cq4+gwkulNFpGb/lYHUJ3tpFMajMhURFn4ocHO0XFGudSinvKll+EqAiP0C",
            "claimschallengecapable": "true",
            "ms-teams-authz-type": "ExplicitLogin",
            "x-ms-client-type": "web",
            "x-ms-client-version": "1415/26022706352",
            "Origin": "https://teams.live.com",
            "Connection": "keep-alive",
            "Sec-Fetch-Dest": "empty",
            "Sec-Fetch-Mode": "cors",
            "Sec-Fetch-Site": "same-origin",
            "Priority": "u=4"
        },
        credentials: "include"
    }).then((res) =>
        res.text().then((text) => {
            let body;
            try {
                body = JSON.parse(text);
            } catch {
                body = text;
            }

            const e = {
                statusCode: res.status,
                statusText: res.statusText,
                body,
                requestHeaders: Object.fromEntries(res.headers.entries())
            };

            const t = e.body;

            if (!t || !t.skypeToken) {
                const err = {
                    statusCode: e.statusCode || "",
                    statusText: e.statusText || "",
                    requestId: e.requestHeaders?.[m] || ""
                };
                C.authTelemetry.failed("Invalid response", err);
                return e;
            }

            C.authTelemetry.succeeded();

            const token = t.skypeToken;

            return {
                skypeId: token.skypeid,
                skypeToken: new h.default(
                    token.skypetoken,
                    Date.now() + 1000 * token.expiresIn
                ),
                signinName: token.signinname,
                anid: null
            };
        })
    );
}