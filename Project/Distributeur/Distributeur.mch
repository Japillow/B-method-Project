/* Distributeur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Distributeur

SETS EtatsAlerte

CONSTANTS prixCoca, prixSchweppes, etatInitial
PROPERTIES prixCoca = 60 & prixSchweppes = 80 & etatInitial:EtatsAlerte
    
        
VARIABLES nbCoca, nbSchweppes, capaciteCanetteParType, seuilAlerteStock, nbPieces50, nbPieces10, etatAlerte
INVARIANT nbCoca:NAT & nbSchweppes:NAT & capaciteCanetteParType:NAT & seuilAlerteStock:NAT & seuilAlerteStock<=capaciteCanetteParType & nbPieces50:NAT & nbPieces10:NAT & etatAlerte:EtatsAlerte
    
INITIALISATION  capaciteCanetteParType,seuilAlerteStock,nbCoca,nbSchweppes:(capaciteCanetteParType:NAT & seuilAlerteStock:NAT & nbCoca=capaciteCanetteParType &  nbSchweppes=capaciteCanetteParType & seuilAlerteStock<=capaciteCanetteParType) || nbPieces50 := 0 || nbPieces10 := 0 || etatAlerte:(etatAlerte:EtatsAlerte & etatAlerte = etatInitial)
  
OPERATIONS

res <-- ProduitDisponibleCoca = res:= bool(nbCoca>0); 
res <-- ProduitDisponibleSchweppes = res:= bool(nbSchweppes>0) ; 
res <-- DistributeurPeutRendreMonnaie = res:= bool(nbPieces10>3);

Avertir = PRE etatAlerte:EtatsAlerte THEN etatAlerte:(etatAlerte:EtatsAlerte & etatAlerte/=etatInitial) END;


DistributeurRempli = PRE etatAlerte:EtatsAlerte THEN BEGIN nbCoca := capaciteCanetteParType || nbSchweppes := capaciteCanetteParType || etatAlerte:=etatInitial END END;

BacsMonnaieVides = BEGIN nbPieces50 := 0  || nbPieces10 := 0 END ;

DistributeurRecoitArgentPourCoca = PRE nbCoca:NAT1 & nbPieces50<MAXINT & nbPieces10<MAXINT THEN 
    BEGIN
nbPieces50,nbPieces10:(nbPieces50:NAT & nbPieces10:NAT & nbPieces50*50+nbPieces10*10= nbPieces50$0*50+nbPieces10$0*10 + prixCoca) || 

nbCoca,etatAlerte:(nbCoca=(nbCoca$0 - 1) & etatAlerte:EtatsAlerte & ((etatAlerte=etatAlerte$0 & nbCoca>seuilAlerteStock) or (etatAlerte/=etatInitial & nbCoca<=seuilAlerteStock))) END END;


DistributeurRecoitArgentPourSchweppes = PRE nbSchweppes:NAT1 & nbPieces50<MAXINT & nbPieces10+3<MAXINT THEN 
    BEGIN
nbPieces50,nbPieces10:(nbPieces50:NAT & nbPieces10:NAT & nbPieces50*50+nbPieces10*10= nbPieces50$0*50+nbPieces10$0*10 + prixSchweppes) || 

nbSchweppes,etatAlerte:(nbSchweppes=(nbSchweppes$0 - 1) & etatAlerte:EtatsAlerte & ((etatAlerte=etatAlerte$0 & nbSchweppes>seuilAlerteStock) or (etatAlerte/=etatInitial & nbSchweppes<=seuilAlerteStock))) END END


END