Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Distributeur))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Distributeur))==(Machine(Distributeur));
  Level(Machine(Distributeur))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Distributeur)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Distributeur))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Distributeur))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Distributeur))==(?);
  List_Includes(Machine(Distributeur))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Distributeur))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Distributeur))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Distributeur))==(?);
  Context_List_Variables(Machine(Distributeur))==(?);
  Abstract_List_Variables(Machine(Distributeur))==(?);
  Local_List_Variables(Machine(Distributeur))==(etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca);
  List_Variables(Machine(Distributeur))==(etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca);
  External_List_Variables(Machine(Distributeur))==(etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Distributeur))==(?);
  Abstract_List_VisibleVariables(Machine(Distributeur))==(?);
  External_List_VisibleVariables(Machine(Distributeur))==(?);
  Expanded_List_VisibleVariables(Machine(Distributeur))==(?);
  List_VisibleVariables(Machine(Distributeur))==(?);
  Internal_List_VisibleVariables(Machine(Distributeur))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Distributeur))==(btrue);
  Gluing_List_Invariant(Machine(Distributeur))==(btrue);
  Expanded_List_Invariant(Machine(Distributeur))==(btrue);
  Abstract_List_Invariant(Machine(Distributeur))==(btrue);
  Context_List_Invariant(Machine(Distributeur))==(btrue);
  List_Invariant(Machine(Distributeur))==(nbCoca: NAT & nbSchweppes: NAT & capaciteCanetteParType: NAT & seuilAlerteStock: NAT & seuilAlerteStock<=capaciteCanetteParType & nbPieces50: NAT & nbPieces10: NAT & etatAlerte: EtatsAlerte)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Distributeur))==(btrue);
  Abstract_List_Assertions(Machine(Distributeur))==(btrue);
  Context_List_Assertions(Machine(Distributeur))==(btrue);
  List_Assertions(Machine(Distributeur))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Distributeur))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Distributeur))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Distributeur))==(@(capaciteCanetteParType$0).(capaciteCanetteParType$0: NAT ==> capaciteCanetteParType:=capaciteCanetteParType$0) || nbCoca:=capaciteCanetteParType || nbSchweppes:=capaciteCanetteParType || @(seuilAlerteStock$1).(seuilAlerteStock$1: NAT & seuilAlerteStock$1<=capaciteCanetteParType ==> seuilAlerteStock:=seuilAlerteStock$1) || nbPieces50:=0 || nbPieces10:=0 || etatAlerte:=EtatAlerteOff);
  Context_List_Initialisation(Machine(Distributeur))==(skip);
  List_Initialisation(Machine(Distributeur))==(capaciteCanetteParType:: NAT || nbCoca:=capaciteCanetteParType || nbSchweppes:=capaciteCanetteParType || seuilAlerteStock: (seuilAlerteStock: NAT & seuilAlerteStock<=capaciteCanetteParType) || nbPieces50:=0 || nbPieces10:=0 || etatAlerte:=EtatAlerteOff)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Distributeur))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Distributeur))==(btrue);
  List_Constraints(Machine(Distributeur))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Distributeur))==(DisponibiliteCoca,DisponibiliteSchweppes,PeutRendreMonnaie,Avertir,DistributeurRempli,BacsMonnaieVides);
  List_Operations(Machine(Distributeur))==(DisponibiliteCoca,DisponibiliteSchweppes,PeutRendreMonnaie,Avertir,DistributeurRempli,BacsMonnaieVides)
END
&
THEORY ListInputX IS
  List_Input(Machine(Distributeur),DisponibiliteCoca)==(?);
  List_Input(Machine(Distributeur),DisponibiliteSchweppes)==(?);
  List_Input(Machine(Distributeur),PeutRendreMonnaie)==(?);
  List_Input(Machine(Distributeur),Avertir)==(?);
  List_Input(Machine(Distributeur),DistributeurRempli)==(?);
  List_Input(Machine(Distributeur),BacsMonnaieVides)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Distributeur),DisponibiliteCoca)==(res);
  List_Output(Machine(Distributeur),DisponibiliteSchweppes)==(res);
  List_Output(Machine(Distributeur),PeutRendreMonnaie)==(res);
  List_Output(Machine(Distributeur),Avertir)==(?);
  List_Output(Machine(Distributeur),DistributeurRempli)==(?);
  List_Output(Machine(Distributeur),BacsMonnaieVides)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Distributeur),DisponibiliteCoca)==(res <-- DisponibiliteCoca);
  List_Header(Machine(Distributeur),DisponibiliteSchweppes)==(res <-- DisponibiliteSchweppes);
  List_Header(Machine(Distributeur),PeutRendreMonnaie)==(res <-- PeutRendreMonnaie);
  List_Header(Machine(Distributeur),Avertir)==(Avertir);
  List_Header(Machine(Distributeur),DistributeurRempli)==(DistributeurRempli);
  List_Header(Machine(Distributeur),BacsMonnaieVides)==(BacsMonnaieVides)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Distributeur),DisponibiliteCoca)==(btrue);
  List_Precondition(Machine(Distributeur),DisponibiliteSchweppes)==(btrue);
  List_Precondition(Machine(Distributeur),PeutRendreMonnaie)==(btrue);
  List_Precondition(Machine(Distributeur),Avertir)==(nbSchweppes<=seuilAlerteStock or nbCoca<=seuilAlerteStock);
  List_Precondition(Machine(Distributeur),DistributeurRempli)==(btrue);
  List_Precondition(Machine(Distributeur),BacsMonnaieVides)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Distributeur),BacsMonnaieVides)==(btrue | nbPieces50,nbPieces10:=0,0);
  Expanded_List_Substitution(Machine(Distributeur),DistributeurRempli)==(btrue | nbCoca,nbSchweppes,etatAlerte:=capaciteCanetteParType,capaciteCanetteParType,EtatAlerteOff);
  Expanded_List_Substitution(Machine(Distributeur),Avertir)==(nbSchweppes<=seuilAlerteStock or nbCoca<=seuilAlerteStock | etatAlerte:=EtatAlerteOn);
  Expanded_List_Substitution(Machine(Distributeur),PeutRendreMonnaie)==(btrue | res:=bool(nbPieces10>3));
  Expanded_List_Substitution(Machine(Distributeur),DisponibiliteSchweppes)==(btrue | res:=bool(nbSchweppes>0));
  Expanded_List_Substitution(Machine(Distributeur),DisponibiliteCoca)==(btrue | res:=bool(nbCoca>0));
  List_Substitution(Machine(Distributeur),DisponibiliteCoca)==(res:=bool(nbCoca>0));
  List_Substitution(Machine(Distributeur),DisponibiliteSchweppes)==(res:=bool(nbSchweppes>0));
  List_Substitution(Machine(Distributeur),PeutRendreMonnaie)==(res:=bool(nbPieces10>3));
  List_Substitution(Machine(Distributeur),Avertir)==(etatAlerte:=EtatAlerteOn);
  List_Substitution(Machine(Distributeur),DistributeurRempli)==(nbCoca:=capaciteCanetteParType || nbSchweppes:=capaciteCanetteParType || etatAlerte:=EtatAlerteOff);
  List_Substitution(Machine(Distributeur),BacsMonnaieVides)==(nbPieces50:=0 || nbPieces10:=0)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Distributeur))==(prixCoca,prixSchweppes);
  Inherited_List_Constants(Machine(Distributeur))==(?);
  List_Constants(Machine(Distributeur))==(prixCoca,prixSchweppes)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Distributeur),Produits)==({Coca,Schweppes});
  Context_List_Enumerated(Machine(Distributeur))==(?);
  Context_List_Defered(Machine(Distributeur))==(?);
  Context_List_Sets(Machine(Distributeur))==(?);
  List_Valuable_Sets(Machine(Distributeur))==(?);
  Inherited_List_Enumerated(Machine(Distributeur))==(?);
  Inherited_List_Defered(Machine(Distributeur))==(?);
  Inherited_List_Sets(Machine(Distributeur))==(?);
  List_Enumerated(Machine(Distributeur))==(Produits,EtatsAlerte);
  List_Defered(Machine(Distributeur))==(?);
  List_Sets(Machine(Distributeur))==(Produits,EtatsAlerte);
  Set_Definition(Machine(Distributeur),EtatsAlerte)==({EtatAlerteOn,EtatAlerteOff})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Distributeur))==(?);
  Expanded_List_HiddenConstants(Machine(Distributeur))==(?);
  List_HiddenConstants(Machine(Distributeur))==(?);
  External_List_HiddenConstants(Machine(Distributeur))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Distributeur))==(btrue);
  Context_List_Properties(Machine(Distributeur))==(btrue);
  Inherited_List_Properties(Machine(Distributeur))==(btrue);
  List_Properties(Machine(Distributeur))==(prixCoca = 60 & prixSchweppes = 80 & Produits: FIN(INTEGER) & not(Produits = {}) & EtatsAlerte: FIN(INTEGER) & not(EtatsAlerte = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Distributeur),DisponibiliteCoca)==(?);
  List_ANY_Var(Machine(Distributeur),DisponibiliteSchweppes)==(?);
  List_ANY_Var(Machine(Distributeur),PeutRendreMonnaie)==(?);
  List_ANY_Var(Machine(Distributeur),Avertir)==(?);
  List_ANY_Var(Machine(Distributeur),DistributeurRempli)==(?);
  List_ANY_Var(Machine(Distributeur),BacsMonnaieVides)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Distributeur)) == (prixCoca,prixSchweppes,Produits,EtatsAlerte,Coca,Schweppes,EtatAlerteOn,EtatAlerteOff | ? | etatAlerte,nbPieces10,nbPieces50,seuilAlerteStock,capaciteCanetteParType,nbSchweppes,nbCoca | ? | DisponibiliteCoca,DisponibiliteSchweppes,PeutRendreMonnaie,Avertir,DistributeurRempli,BacsMonnaieVides | ? | ? | ? | Distributeur);
  List_Of_HiddenCst_Ids(Machine(Distributeur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Distributeur)) == (prixCoca,prixSchweppes);
  List_Of_VisibleVar_Ids(Machine(Distributeur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Distributeur)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Distributeur)) == (Type(Produits) == Cst(SetOf(etype(Produits,0,1)));Type(EtatsAlerte) == Cst(SetOf(etype(EtatsAlerte,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Distributeur)) == (Type(Coca) == Cst(etype(Produits,0,1));Type(Schweppes) == Cst(etype(Produits,0,1));Type(EtatAlerteOn) == Cst(etype(EtatsAlerte,0,1));Type(EtatAlerteOff) == Cst(etype(EtatsAlerte,0,1));Type(prixCoca) == Cst(btype(INTEGER,?,?));Type(prixSchweppes) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Distributeur)) == (Type(etatAlerte) == Mvl(etype(EtatsAlerte,?,?));Type(nbPieces10) == Mvl(btype(INTEGER,?,?));Type(nbPieces50) == Mvl(btype(INTEGER,?,?));Type(seuilAlerteStock) == Mvl(btype(INTEGER,?,?));Type(capaciteCanetteParType) == Mvl(btype(INTEGER,?,?));Type(nbSchweppes) == Mvl(btype(INTEGER,?,?));Type(nbCoca) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Distributeur)) == (Type(BacsMonnaieVides) == Cst(No_type,No_type);Type(DistributeurRempli) == Cst(No_type,No_type);Type(Avertir) == Cst(No_type,No_type);Type(PeutRendreMonnaie) == Cst(btype(BOOL,?,?),No_type);Type(DisponibiliteSchweppes) == Cst(btype(BOOL,?,?),No_type);Type(DisponibiliteCoca) == Cst(btype(BOOL,?,?),No_type));
  Observers(Machine(Distributeur)) == (Type(PeutRendreMonnaie) == Cst(btype(BOOL,?,?),No_type);Type(DisponibiliteSchweppes) == Cst(btype(BOOL,?,?),No_type);Type(DisponibiliteCoca) == Cst(btype(BOOL,?,?),No_type))
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
