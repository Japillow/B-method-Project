/* Utilisateur
 * Author: Barrios James et Girka Fabien
 * Creation date: 02/06/2018
 */
MACHINE
    Utilisateur

SEES Distributeur
    
VARIABLES nbPiece50, nbPieces10, nbMaxPieces
INVARIANT nbPiece50:NAT & nbPieces10:NAT & nbMaxPieces:NAT & nbPiece50*2+nbPieces10 <= nbMaxPieces
INITIALISATION nbPiece50:=0 || nbPieces10:=0 || nbMaxPieces::NAT

 
OPERATIONS
    

END
