#include "shim.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_SLOTS 262144

typedef struct {
    void       *obj;
    const char *name;
    int64_t     value;
} Slot;

static Slot   g_slots[MAX_SLOTS];
static size_t g_slot_count = 0;

static Slot   g_globals[MAX_SLOTS];
static size_t g_global_count = 0;

static size_t lookup(Slot *tab, size_t n, void *obj, const char *name) {
    for (size_t i = 0; i < n; i++) {
        if (tab[i].obj == obj && strcmp(tab[i].name, name) == 0) {
            return i;
        }
    }
    return (size_t)-1;
}

void *shim_obj_alloc(const char *type_name) {
    ObjHeader *o = (ObjHeader *)calloc(1, sizeof(ObjHeader));
    if (!o) {
        fputs("il2asm: out of memory\n", stderr);
        abort();
    }
    o->type = type_name;
    o->len  = sizeof(ObjHeader);
    return o;
}

void *shim_field_slot(void *obj, const char *field) {
    if (!obj) {
        fputs("il2asm: field access on null reference\n", stderr);
        abort();
    }
    size_t i = lookup(g_slots, g_slot_count, obj, field);
    if (i != (size_t)-1) {
        return &g_slots[i].value;
    }
    if (g_slot_count == MAX_SLOTS) {
        fputs("il2asm: field slot table exhausted\n", stderr);
        abort();
    }
    g_slots[g_slot_count].obj   = obj;
    g_slots[g_slot_count].name  = field;
    g_slots[g_slot_count].value = 0;
    return &g_slots[g_slot_count++].value;
}

void *shim_global_slot(const char *field) {
    size_t i = lookup(g_globals, g_global_count, NULL, field);
    if (i != (size_t)-1) {
        return &g_globals[i].value;
    }
    if (g_global_count == MAX_SLOTS) {
        fputs("il2asm: global slot table exhausted\n", stderr);
        abort();
    }
    g_globals[g_global_count].obj   = NULL;
    g_globals[g_global_count].name  = field;
    g_globals[g_global_count].value = 0;
    return &g_globals[g_global_count++].value;
}

MString *shim_string_new(const uint16_t *utf16, int32_t len) {
    if (len < 0) {
        len = 0;
    }
    MString *s = (MString *)calloc(1, sizeof(ObjHeader) + (size_t)len * 2);
    if (!s) {
        fputs("il2asm: out of memory\n", stderr);
        abort();
    }
    s->h.type = "System.String";
    s->h.len  = len;
    if (utf16 && len) {
        memcpy(s->data, utf16, (size_t)len * 2);
    }
    return s;
}

MArray *shim_array_new(int64_t len, int32_t elem_size) {
    if (len < 0) {
        len = 0;
    }
    (void)elem_size; /* prototype: one 8-byte slot per element */
    MArray *a = (MArray *)calloc(1, sizeof(ObjHeader) + (size_t)len * 8);
    if (!a) {
        fputs("il2asm: out of memory\n", stderr);
        abort();
    }
    a->h.type = "array";
    a->h.len  = len;
    return a;
}

void shim_nullref(const char *where) {
    fprintf(stderr, "il2asm: NullReferenceException at %s\n", where ? where : "?");
    abort();
}

void shim_unimplemented(const char *what) {
    fprintf(stderr, "il2asm: unimplemented method called: %s\n", what ? what : "?");
    abort();
}

void shim_throw(void *exception) {
    (void)exception;
    fputs("il2asm: managed exception raised (unwinding not implemented)\n", stderr);
    abort();
}

/* ---- helpers ---------------------------------------------------------- */

void shim_print_int(int64_t v) {
    printf("%lld\n", (long long)v);
}

void shim_print_string(const MString *s) {
    if (!s) {
        fputs("(null)\n", stdout);
        return;
    }
    for (int64_t i = 0; i < s->h.len; i++) {
        uint16_t c = s->data[i];
        if (c < 0x80) {
            putchar((int)c);
        } else if (c < 0x800) {
            putchar(0xC0 | (c >> 6));
            putchar(0x80 | (c & 0x3F));
        } else {
            putchar(0xE0 | (c >> 12));
            putchar(0x80 | ((c >> 6) & 0x3F));
            putchar(0x80 | (c & 0x3F));
        }
    }
    putchar('\n');
}

MString *shim_string_from_c(const char *c) {
    size_t n = c ? strlen(c) : 0;
    MString *s = (MString *)calloc(1, sizeof(ObjHeader) + n * 2);
    if (!s) {
        abort();
    }
    s->h.type = "System.String";
    s->h.len  = (int64_t)n;
    for (size_t i = 0; i < n; i++) {
        s->data[i] = (uint16_t)(unsigned char)c[i];
    }
    return s;
}

int32_t shim_string_eq(const MString *a, const MString *b) {
    if (a == b) {
        return 1;
    }
    if (!a || !b || a->h.len != b->h.len) {
        return 0;
    }
    return memcmp(a->data, b->data, (size_t)a->h.len * 2) == 0;
}

/* ---- boxing ----------------------------------------------------------- */

void *shim_box(int64_t value, const char *type_name) {
    ObjHeader *o = (ObjHeader *)shim_obj_alloc(type_name ? type_name : "System.Object");
    *(int64_t *)shim_field_slot(o, "value__") = value;
    return o;
}

int64_t shim_unbox(void *boxed) {
    if (!boxed) {
        shim_nullref("unbox.any");
    }
    return *(int64_t *)shim_field_slot(boxed, "value__");
}

/* Stringify anything the runtime can hold. Strings pass through; boxed
 * primitives are formatted by declaring type. null becomes "". */
static MString *to_string(void *o) {
    if (!o) {
        return NULL;
    }
    ObjHeader *h = (ObjHeader *)o;
    if (h->type && strcmp(h->type, "System.String") == 0) {
        return (MString *)o;
    }
    char buf[64];
    int64_t v = *(int64_t *)shim_field_slot(o, "value__");
    if (h->type && (strcmp(h->type, "System.Boolean") == 0 ||
                    strcmp(h->type, "bool") == 0)) {
        snprintf(buf, sizeof(buf), "%s", v ? "True" : "False");
    } else if (h->type && (strcmp(h->type, "System.Char") == 0 ||
                           strcmp(h->type, "char") == 0)) {
        if (v < 0x80) {
            snprintf(buf, sizeof(buf), "%c", (int)v);
        } else {
            snprintf(buf, sizeof(buf), "?");
        }
    } else {
        snprintf(buf, sizeof(buf), "%lld", (long long)v);
    }
    return shim_string_from_c(buf);
}

/* ---- BCL surface implemented for the transpiled subset ---------------- */
/* Symbol names are exactly what il2asm's mangler emits. */

MString *m_System_String_Concat__ref_ref(void *a, void *b) {
    MString *sa = to_string(a);
    MString *sb = to_string(b);
    int64_t la = sa ? sa->h.len : 0;
    int64_t lb = sb ? sb->h.len : 0;
    MString *r = (MString *)calloc(1, sizeof(ObjHeader) + (size_t)(la + lb) * 2);
    if (!r) {
        abort();
    }
    r->h.type = "System.String";
    r->h.len  = la + lb;
    if (la) {
        memcpy(r->data, sa->data, (size_t)la * 2);
    }
    if (lb) {
        memcpy(r->data + la, sb->data, (size_t)lb * 2);
    }
    return r;
}

MString *m_System_String_Concat__ref_ref_ref(void *a, void *b, void *c) {
    return m_System_String_Concat__ref_ref(
        m_System_String_Concat__ref_ref(a, b), c);
}

int32_t m_System_String_get_Length__void(MString *s) {
    if (!s) {
        shim_nullref("System.String::get_Length");
    }
    return (int32_t)s->h.len;
}

int32_t m_System_String_IsNullOrEmpty__ref(void *s) {
    MString *t = to_string(s);
    return (!t || t->h.len == 0) ? 1 : 0;
}

int32_t m_System_Math_Abs__i4(int32_t v) {
    return v < 0 ? -v : v;
}

int32_t m_System_Math_Max__i4_i4(int32_t a, int32_t b) {
    return a > b ? a : b;
}

int32_t m_System_Math_Min__i4_i4(int32_t a, int32_t b) {
    return a < b ? a : b;
}

void m_System_Object_ctor__void(void *self) {
    (void)self;
}
