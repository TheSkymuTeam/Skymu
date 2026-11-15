/* Runs the assembly generated from an NSIS script.
 *
 *   gcc -c shim/nsis.c -o /tmp/nsis.o
 *   gcc -c ../../NSIS/SkymuSetup.nsi.S -o /tmp/setup.o
 *   gcc tests/nsis_dryrun.c /tmp/nsis.o /tmp/setup.o -o /tmp/nsis_dryrun
 *   /tmp/nsis_dryrun
 *
 * The installer prints the sequence it would perform. Exit status is 0 when
 * both entry points complete without aborting.
 *
 * Set NSIS_LEGACY=1 to pretend the "Skymu Legacy" radio button was selected.
 * The wizard is not recreated, but the variable it would set is exported by
 * the generated module, so the install section's ${If} branch can be driven
 * either way.
 */
#include <stdio.h>
#include <stdlib.h>

extern long nsis_install(void);
extern long nsis_uninstall(void);
extern unsigned long shim_nsis_action_count(void);
extern const char *nsis_var_IsLegacy;

int main(void)
{
    long rc;

    if (getenv("NSIS_LEGACY") != NULL) {
        nsis_var_IsLegacy = "1";
    }

    printf("=== nsis_install ===\n");
    rc = nsis_install();
    printf("=== install returned %ld ===\n\n", rc);
    if (rc != 0) {
        return 1;
    }

    printf("=== nsis_uninstall ===\n");
    rc = nsis_uninstall();
    printf("=== uninstall returned %ld ===\n\n", rc);
    if (rc != 0) {
        return 1;
    }

    printf("%lu runtime actions recorded\n", shim_nsis_action_count());
    return 0;
}
