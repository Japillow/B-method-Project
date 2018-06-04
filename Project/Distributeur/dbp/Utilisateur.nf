Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Utilisateur))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Utilisateur))==(Machine(Utilisateur));
  Level(Machine(Utilisateur))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Utilisateur)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Utilisateur))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Utilisateur))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Utilisateur))==(Distributeur);
  List_Includes(Machine(Utilisateur))==(Distributeur)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Utilisateur))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Utilisateur))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Utilisateur))==(?);
  Context_List_Variables(Machine(Utilisateur))==(?);
  Abstract_List_Variables(Machine(Utilisateur))==(?);
  Local_List_Variables(Machine(Utilisateur))==(userNbPieces10,userNbPieces50);
  List_Variables(Machine(Utilisateur))==(userNbPieces10,userNbPieces50,etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca);
  External_List_Variables(Machine(Utilisateur))==(userNbPieces10,userNbPieces50,etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Utilisateur))==(?);
  Abstract_List_VisibleVariables(Machine(Utilisateur))==(?);
  External_List_VisibleVariables(Machine(Utilisateur))==(?);
  Expanded_List_VisibleVariables(Machine(Utilisateur))==(?);
  List_VisibleVariables(Machine(Utilisateur))==(?);
  Internal_List_VisibleVariables(Machine(Utilisateur))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Utilisateur))==(btrue);
  Gluing_List_Invariant(Machine(Utilisateur))==(btrue);
  Abstract_List_Invariant(Machine(Utilisateur))==(btrue);
  Expanded_List_Invariant(Machine(Utilisateur))==(nbCoca: NAT & nbSchweppes: NAT & capaciteCanetteParType: NAT & seuilAlerteStock: NAT & seuilAlerteStock<=capaciteCanetteParType & nbPieces50: NAT & nbPieces10: NAT & etatAlerte: EtatsAlerte);
  Context_List_Invariant(Machine(Utilisateur))==(btrue);
  List_Invariant(Machine(Utilisateur))==(userNbPieces50: NAT & userNbPieces10: NAT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Utilisateur))==(btrue);
  Expanded_List_Assertions(Machine(Utilisateur))==(btrue);
  Context_List_Assertions(Machine(Utilisateur))==(btrue);
  List_Assertions(Machine(Utilisateur))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Utilisateur))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Utilisateur))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Utilisateur))==(@(capaciteCanetteParType$0).(capaciteCanetteParType$0: NAT ==> capaciteCanetteParType:=capaciteCanetteParType$0) || nbCoca:=capaciteCanetteParType || nbSchweppes:=capaciteCanetteParType || @(seuilAlerteStock$0).(seuilAlerteStock$0: NAT ==> seuilAlerteStock:=seuilAlerteStock$0) || nbPieces50:=0 || nbPieces10:=0 || etatAlerte:=EtatAlerteOff;(@(userNbPieces50$0).(userNbPieces50$0: NAT ==> userNbPieces50:=userNbPieces50$0) || @(userNbPieces10$0).(userNbPieces10$0: NAT ==> userNbPieces10:=userNbPieces10$0)));
  Context_List_Initialisation(Machine(Utilisateur))==(skip);
  List_Initialisation(Machine(Utilisateur))==(userNbPieces50:: NAT || userNbPieces10:: NAT)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Utilisateur))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Utilisateur),Machine(Distributeur))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Utilisateur),Machine(Distributeur))==(btrue);
  List_Context_Constraints(Machine(Utilisateur))==(btrue);
  List_Constraints(Machine(Utilisateur))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Utilisateur))==(ProduitDisponibleCoca,ProduitDisponibleSchweppes,DistributeurPeutRendreMonnaie);
  List_Operations(Machine(Utilisateur))==(ProduitDisponibleCoca,ProduitDisponibleSchweppes,DistributeurPeutRendreMonnaie)
END
&
THEORY ListInputX IS
  List_Input(Machine(Utilisateur),ProduitDisponibleCoca)==(?);
  List_Input(Machine(Utilisateur),ProduitDisponibleSchweppes)==(?);
  List_Input(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Utilisateur),ProduitDisponibleCoca)==(res);
  List_Output(Machine(Utilisateur),ProduitDisponibleSchweppes)==(res);
  List_Output(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Utilisateur),ProduitDisponibleCoca)==(res <-- ProduitDisponibleCoca);
  List_Header(Machine(Utilisateur),ProduitDisponibleSchweppes)==(res <-- ProduitDisponibleSchweppes);
  List_Header(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(res <-- DistributeurPeutRendreMonnaie)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Utilisateur),ProduitDisponibleCoca)==(btrue);
  List_Precondition(Machine(Utilisateur),ProduitDisponibleSchweppes)==(btrue);
  List_Precondition(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(btrue | res:=bool(nbPieces10>3));
  Expanded_List_Substitution(Machine(Utilisateur),ProduitDisponibleSchweppes)==(btrue | res:=bool(nbSchweppes>0));
  Expanded_List_Substitution(Machine(Utilisateur),ProduitDisponibleCoca)==(btrue | res:=bool(nbCoca>0));
  List_Substitution(Machine(Utilisateur),ProduitDisponibleCoca)==(res <-- DisponibiliteCoca);
  List_Substitution(Machine(Utilisateur),ProduitDisponibleSchweppes)==(res <-- DisponibiliteSchweppes);
  List_Substitution(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(res <-- PeutRendreMonnaie)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Utilisateur))==(prixCoca,prixSchweppes);
  Inherited_List_Constants(Machine(Utilisateur))==(prixCoca,prixSchweppes);
  List_Constants(Machine(Utilisateur))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Utilisateur),EtatsAlerte)==({EtatAlerteOn,EtatAlerteOff});
  Context_List_Enumerated(Machine(Utilisateur))==(?);
  Context_List_Defered(Machine(Utilisateur))==(?);
  Context_List_Sets(Machine(Utilisateur))==(?);
  List_Valuable_Sets(Machine(Utilisateur))==(?);
  Inherited_List_Enumerated(Machine(Utilisateur))==(Produits,EtatsAlerte);
  Inherited_List_Defered(Machine(Utilisateur))==(?);
  Inherited_List_Sets(Machine(Utilisateur))==(Produits,EtatsAlerte);
  List_Enumerated(Machine(Utilisateur))==(?);
  List_Defered(Machine(Utilisateur))==(?);
  List_Sets(Machine(Utilisateur))==(?);
  Set_Definition(Machine(Utilisateur),Produits)==({Coca,Schweppes})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Utilisateur))==(?);
  Expanded_List_HiddenConstants(Machine(Utilisateur))==(?);
  List_HiddenConstants(Machine(Utilisateur))==(?);
  External_List_HiddenConstants(Machine(Utilisateur))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Utilisateur))==(btrue);
  Context_List_Properties(Machine(Utilisateur))==(btrue);
  Inherited_List_Properties(Machine(Utilisateur))==(prixCoca = 60 & prixSchweppes = 80 & Produits: FIN(INTEGER) & not(Produits = {}) & EtatsAlerte: FIN(INTEGER) & not(EtatsAlerte = {}));
  List_Properties(Machine(Utilisateur))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Utilisateur),ProduitDisponibleCoca)==(?);
  List_ANY_Var(Machine(Utilisateur),ProduitDisponibleSchweppes)==(?);
  List_ANY_Var(Machine(Utilisateur),DistributeurPeutRendreMonnaie)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Utilisateur)) == (? | prixCoca,prixSchweppes,Produits,EtatsAlerte,Coca,Schweppes,EtatAlerteOn,EtatAlerteOff | userNbPieces10,userNbPieces50 | etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca | ProduitDisponibleCoca,ProduitDisponibleSchweppes,DistributeurPeutRendreMonnaie | ? | included(Machine(Distributeur)) | ? | Utilisateur);
  List_Of_HiddenCst_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Utilisateur)) == (prixCoca,prixSchweppes);
  List_Of_VisibleVar_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Utilisateur)) == (?: ?);
  List_Of_Ids(Machine(Distributeur)) == (prixCoca,prixSchweppes,Produits,EtatsAlerte,Coca,Schweppes,EtatAlerteOn,EtatAlerteOff | ? | etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca | ? | DisponibiliteCoca,DisponibiliteSchweppes,PeutRendreMonnaie,Avertir,DistributeurRempli,BacsMonnaieVides | ? | ? | ? | Distributeur);
  List_Of_HiddenCst_Ids(Machine(Distributeur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Distributeur)) == (prixCoca,prixSchweppes);
  List_Of_VisibleVar_Ids(Machine(Distributeur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Distributeur)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Utilisateur)) == (Type(EtatsAlerte) == Cst(SetOf(etype(EtatsAlerte,0,1)));Type(Produits) == Cst(SetOf(etype(Produits,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Utilisateur)) == (Type(prixSchweppes) == Cst(btype(INTEGER,?,?));Type(prixCoca) == Cst(btype(INTEGER,?,?));Type(EtatAlerteOff) == Cst(etype(EtatsAlerte,0,1));Type(EtatAlerteOn) == Cst(etype(EtatsAlerte,0,1));Type(Schweppes) == Cst(etype(Produits,0,1));Type(Coca) == Cst(etype(Produits,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Utilisateur)) == (Type(nbCoca) == Mvl(btype(INTEGER,?,?));Type(nbSchweppes) == Mvl(btype(INTEGER,?,?));Type(capaciteCanetteParType) == Mvl(btype(INTEGER,?,?));Type(seuilAlerteStock) == Mvl(btype(INTEGER,?,?));Type(nbPieces50) == Mvl(btype(INTEGER,?,?));Type(nbPieces10) == Mvl(btype(INTEGER,?,?));Type(etatAlerte) == Mvl(etype(EtatsAlerte,?,?));Type(userNbPieces10) == Mvl(btype(INTEGER,?,?));Type(userNbPieces50) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Utilisateur)) == (Type(DistributeurPeutRendreMonnaie) == Cst(btype(BOOL,?,?),No_type);Type(ProduitDisponibleSchweppes) == Cst(btype(BOOL,?,?),No_type);Type(ProduitDisponibleCoca) == Cst(btype(BOOL,?,?),No_type));
  Observers(Machine(Utilisateur)) == (Type(DistributeurPeutRendreMonnaie) == Cst(btype(BOOL,?,?),No_type);Type(ProduitDisponibleSchweppes) == Cst(btype(BOOL,?,?),No_type);Type(ProduitDisponibleCoca) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
