/* Distributeur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Distributeur

SETS Produits = { Coca , Schweppes } ; EtatsAlerte = { EtatAlerteOn , EtatAlerteOff }

CONCRETE_CONSTANTS prixCoca , prixSchweppes
PROPERTIES prixCoca = 60 & prixSchweppes = 80


ABSTRACT_VARIABLES nbCoca , nbSchweppes , capaciteCanetteParType , seuilAlerteStock , nbPieces50 , nbPieces10 , etatAlerte
INVARIANT nbCoca : NAT & nbSchweppes : NAT & capaciteCanetteParType : NAT & seuilAlerteStock : NAT & seuilAlerteStock <= capaciteCanetteParType & nbPieces50 : NAT & nbPieces10 : NAT & etatAlerte : EtatsAlerte
INITIALISATION  capaciteCanetteParType :: NAT || nbCoca := capaciteCanetteParType || nbSchweppes := capaciteCanetteParType || seuilAlerteStock : ( seuilAlerteStock : NAT & seuilAlerteStock <= capaciteCanetteParType ) || nbPieces50 := 0 || nbPieces10 := 0 || etatAlerte := EtatAlerteOff

OPERATIONS

res <-- DisponibiliteCoca = res := bool ( nbCoca > 0 ) ;
res <-- DisponibiliteSchweppes = res := bool ( nbSchweppes > 0 ) ;
res <-- PeutRendreMonnaie = res := bool ( nbPieces10 > 3 ) ;

Avertir = PRE nbSchweppes <= seuilAlerteStock or nbCoca <= seuilAlerteStock THEN etatAlerte := EtatAlerteOn END ;

DistributeurRempli = BEGIN nbCoca := capaciteCanetteParType || nbSchweppes := capaciteCanetteParType || etatAlerte := EtatAlerteOff END ;
BacsMonnaieVides = BEGIN nbPieces50 := 0  || nbPieces10 := 0 END

END
