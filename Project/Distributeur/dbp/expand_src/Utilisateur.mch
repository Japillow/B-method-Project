/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

INCLUDES Distributeur

ABSTRACT_VARIABLES userNbPieces50 , userNbPieces10
INVARIANT userNbPieces50 : NAT & userNbPieces10 : NAT
INITIALISATION userNbPieces50 :: NAT || userNbPieces10 :: NAT

OPERATIONS

res <-- ProduitDisponibleCoca = res <-- DisponibiliteCoca ;
res <-- ProduitDisponibleSchweppes = res <-- DisponibiliteSchweppes ;
res <-- DistributeurPeutRendreMonnaie = res <-- PeutRendreMonnaie

END
