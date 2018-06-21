#ifndef _PorteMonnaie_h
#define _PorteMonnaie_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void PorteMonnaie__INITIALISATION(void);

/* Clause OPERATIONS */

extern void PorteMonnaie__verifiermonnaie(int32_t prix, bool *booleen);
extern void PorteMonnaie__Payer(int32_t prix);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _PorteMonnaie_h */
