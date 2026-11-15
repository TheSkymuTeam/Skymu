/* Native harness for transpiled Skymu.Versioning.BuildInfo.
 *
 * Calls the transpiled IsNewerThan over a fixed matrix and prints one result
 * per line. The reference program (samples/Versioning.Reference) prints the
 * same matrix from the real CLR; the test compares the two.
 */
#include "../shim/shim.h"

#include <stdio.h>
#include <stdlib.h>

/* Symbols produced by il2asm for the transpiled assembly. */
extern int32_t m_Skymu_Versioning_BuildInfo_IsNewerThan__ref(void *self, void *other);
extern void   *m_Skymu_Versioning_BuildInfo_GetCodeName__void(void *self);

typedef struct {
    int32_t major, minor, patch;
    int32_t is_beta, beta;
} Row;

static void *make(Row r) {
    void *o = shim_obj_alloc("Skymu.Versioning.BuildInfo");
    *(int64_t *)shim_field_slot(o, "<Major>k__BackingField")     = r.major;
    *(int64_t *)shim_field_slot(o, "<Minor>k__BackingField")     = r.minor;
    *(int64_t *)shim_field_slot(o, "<Patch>k__BackingField")     = r.patch;
    *(int64_t *)shim_field_slot(o, "<IsBeta>k__BackingField")    = r.is_beta;
    *(int64_t *)shim_field_slot(o, "<BetaNumber>k__BackingField") = r.beta;
    return o;
}

int main(void) {
    Row cases[][2] = {
        {{1, 0, 0, 0, 0}, {1, 0, 0, 0, 0}},
        {{1, 1, 0, 0, 0}, {1, 0, 9, 0, 0}},
        {{1, 1, 0, 1, 3}, {1, 1, 0, 1, 2}},
        {{1, 1, 0, 1, 0}, {1, 1, 0, 0, 0}},
        {{1, 1, 0, 0, 0}, {1, 1, 0, 1, 5}},
        {{1, 2, 0, 0, 0}, {1, 2, 0, 0, 0}},
        {{2, 0, 0, 0, 0}, {1, 9, 9, 0, 0}},
    };
    size_t n = sizeof(cases) / sizeof(cases[0]);

    for (size_t i = 0; i < n; i++) {
        void *a = make(cases[i][0]);
        void *b = make(cases[i][1]);
        printf("%d\n", m_Skymu_Versioning_BuildInfo_IsNewerThan__ref(a, b));
    }

    /* null argument: `other == null` short-circuits to true */
    void *a = make((Row){1, 0, 0, 0, 0});
    printf("%d\n", m_Skymu_Versioning_BuildInfo_IsNewerThan__ref(a, NULL));

    /* GetCodeName: ldstr + String.Concat + field reads */
    void *c = make((Row){1, 0, 0, 0, 0});
    *(int64_t *)shim_field_slot(c, "<MajorName>k__BackingField") =
        (int64_t)shim_string_from_c("Luminous");
    *(int64_t *)shim_field_slot(c, "<MinorName>k__BackingField") =
        (int64_t)shim_string_from_c("Dusk");
    shim_print_string(m_Skymu_Versioning_BuildInfo_GetCodeName__void(c));
    return 0;
}
