#ifndef _Distributeur_h
#define _Distributeur_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* TODO : #define Distributeur__EtatsAlerte__max */
/* Clause SETS */
typedef int Distributeur__EtatsAlerte;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* TO DO: #define Distributeur__prixCoca */
/* TO DO: #define Distributeur__prixSchweppes */
/* TO DO: #define Distributeur__etatInitial */
/* Array and record constants */



extern void Distributeur__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Distributeur__ProduitDisponibleCoca(bool *res);
extern void Distributeur__ProduitDisponibleSchweppes(bool *res);
extern void Distributeur__DistributeurPeutRendreMonnaie(bool *res);
extern void Distributeur__Avertir(void);
extern void Distributeur__DistributeurRempli(void);
extern void Distributeur__BacsMonnaieVides(void);
extern void Distributeur__DistributeurRecoitArgentPourCoca(void);
extern void Distributeur__DistributeurRecoitArgentPourSchweppes(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Distributeur_h */
