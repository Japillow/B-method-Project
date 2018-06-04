/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

INCLUDES Distributeur,PorteMonnaie

OPERATIONS 

achatCoca = userNbPieces50,userNbPieces10,nbPieces50,nbPieces10,nbCoca:(((ProduitDisponibleCoca=FALSE or DistributeurPeutRendreMonnaie=FALSE or verifiermonnaie(prixCoca)=FALSE) & userNbPieces50=userNbPieces50$0 & userNbPieces10=userNbPieces10$0 & nbPieces50=nbPieces50$0 & 
nbPieces10=nbPieces10$0 & 
nbCoca=nbCoca$0)
or 



(nbPieces50,nbPieces10:(nbPieces50*50+nbPieces10*10= nbPieces50$0*50+nbPieces10$0*10 + prixCoca)   
    & 
(userNbPieces50,userNbPieces10:(userNbPieces50*50+userNbPieces10*10= userNbPieces50$0*50+userNbPieces10$0*10 - prixCoca)))

)
END
