/* PorteMonnaie
 * Author: barrios_jam
 * Creation date: 04/06/2018
 */
MACHINE
    PorteMonnaie
    
VARIABLES userNbPieces50, userNbPieces10
INVARIANT userNbPieces50:NAT & userNbPieces10:NAT
INITIALISATION userNbPieces50::NAT || userNbPieces10::NAT
    
OPERATIONS
    
booleen <-- verifiermonnaie(prix) =
PRE prix:NAT THEN
    booleen:=bool(prix<=(userNbPieces50*50+userNbPieces10*10))
END;

Payer(prix) = PRE prix:NAT & (prix=60 or prix =80) & userNbPieces50 > 0 & userNbPieces10 > 2 THEN userNbPieces50,userNbPieces10:(userNbPieces50:NAT & userNbPieces10:NAT & userNbPieces50*50+userNbPieces10*10= userNbPieces50$0*50+userNbPieces10$0*10 - prix) END
END