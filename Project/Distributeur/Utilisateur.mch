/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

INCLUDES Distributeur, PorteMonnaie

OPERATIONS 

achatCoca = 
PRE nbCoca:NAT1 & userNbPieces50 > 0 & userNbPieces10 > 2 & nbPieces50 < MAXINT & nbPieces10 < MAXINT
THEN 
BEGIN Payer(prixCoca) || DistributeurRecoitArgentPourCoca END END;
    
achatSchweppes = PRE nbSchweppes:NAT1 & userNbPieces50 > 0 & userNbPieces10 > 2 & nbPieces50 < MAXINT & nbPieces10 + 3 < MAXINT
THEN 
BEGIN Payer(prixSchweppes) || DistributeurRecoitArgentPourSchweppes END
END

END