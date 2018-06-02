/* Distributeur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Distributeur

CONSTANTS prixCoca, prixSchweppes
PROPERTIES prixCoca=60 & prixSchweppes =80
    
        
VARIABLES nbCoca, nbSchewppes, capaciteCanetteParType, seuilAlerteStock
INVARIANT nbCoca:NAT & nbSchewppes:NAT & capaciteCanetteParType:NAT & seuilAlerteStock:NAT & seuilAlerteStock<=capaciteCanetteParType
INITIALISATION  capaciteCanetteParType::NAT || nbCoca:=capaciteCanetteParType || nbSchewppes:=capaciteCanetteParType || seuilAlerteStock::NAT 
    
OPERATIONS

END
