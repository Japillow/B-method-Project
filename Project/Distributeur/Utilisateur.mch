/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

INCLUDES Distributeur,PorteMonnaie

OPERATIONS 

achatCoca = PRE nbCoca:NAT1 THEN BEGIN Payer(prixCoca) || DistributeurRecoitArgentPourCoca END
END
END