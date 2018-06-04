/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

INCLUDES Distributeur,PorteMonnaie

OPERATIONS 

achatCoca = PRE ProduitDisponibleCoca=TRUE THEN BEGIN verifiermonnaie(prixCoca) || DistributeurPeutRendreMonnaie || Payer(prixCoca) || DistributeurRecoitArgent(prixCoca) || DistributeurDonneCoca
END
END
END
