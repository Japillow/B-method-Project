#ifndef _Utilisateur_h
#define _Utilisateur_h

#include <stdint.h>
#include <stdbool.h>
/* Clause INCLUDES */
#include "Distributeur.h"
#include "PorteMonnaie.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* TODO : #define Utilisateur__EtatsAlerte__max */
/* Clause SETS */
typedef Distributeur__EtatsAlerte Utilisateur__EtatsAlerte;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Utilisateur__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Utilisateur__achatCoca(void);
extern void Utilisateur__achatSchweppes(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Utilisateur_h */
