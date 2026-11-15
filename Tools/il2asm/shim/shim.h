/* Runtime shim for IL2ASM-transpiled code.
 *
 * This is not a CLR. It is the smallest object model that lets transpiled
 * methods run: a header, a bump allocator, name-addressed field slots, and
 * string/array primitives. Missing BCL methods show up as link errors, which
 * is the intended workflow: link, read the undefined symbols, implement the
 * ones the target actually needs.
 *
 * Memory is never freed. That is a deliberate prototype limitation, not an
 * oversight.
 */
#ifndef IL2ASM_SHIM_H
#define IL2ASM_SHIM_H

#include <stddef.h>
#include <stdint.h>

/* ---- layouts ---------------------------------------------------------- */
/* Every header is 16 bytes so arrays can start at offset 16 in the emitter. */
typedef struct {
    const char *type;   /* +0  static type name */
    int64_t     len;    /* +8  string length / array length / object size */
} ObjHeader;

typedef struct {
    ObjHeader h;
    uint16_t  data[];   /* UTF-16 code units */
} MString;

typedef struct {
    ObjHeader h;
    int64_t   data[];   /* one 8-byte slot per element (prototype) */
} MArray;

/* ---- core ------------------------------------------------------------- */
void    *shim_obj_alloc(const char *type_name);
void    *shim_field_slot(void *obj, const char *field);
void    *shim_global_slot(const char *field);
MString *shim_string_new(const uint16_t *utf16, int32_t len);
MArray  *shim_array_new(int64_t len, int32_t elem_size);
void     shim_nullref(const char *where);
void     shim_throw(void *exception);
void     shim_unimplemented(const char *what);

/* ---- test/inspection helpers ------------------------------------------ */
void     shim_print_int(int64_t v);
void     shim_print_string(const MString *s);
int32_t  shim_string_eq(const MString *a, const MString *b);
MString *shim_string_from_c(const char *c);

/* ---- boxing ----------------------------------------------------------- */
void    *shim_box(int64_t value, const char *type_name);
int64_t  shim_unbox(void *boxed);

#endif
