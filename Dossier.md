# Examen et projet de réalisation en B

## Spécifications de l'énoncé

On considère un système automatique de distibuteurs des boissons avec les spécificités suivantes: 
- Il y a 2 sortes de boissons : le Coca et le Schweppes.
- Une canette de Coca coûte 60 centimes.
- Une canette de Sweppes coûte 80 centimes.
- Un utilisateur dispose de pièces de 50 et 10 centimes.
- La machine distributrice doit signaler à l'utilisateur si le produit est disponible, et si elle peut rendre la monnaie
- La machine utilisatrice doit indiquer à l'exploitant quand le stock est inquétant.
- L'exploitant peut remettre les produits à leur quantité maximum
- L'exploitant peut vider complètement les bacs à pièce de monnaie.

## Tâches

Le travail rendu comporte plusieurs aspects 
- Compléter les spécifications de la machine, en justifiant vos choix
- Donner les machines abstraites, leur raffinement et leur implémentaiton pour réaliser une telle machine.
- L'implémentation devra permettre une démonstration.

Idéalement toutes les obligations de preuves devront être déchargées  automatiquement
Si tel n'est pas le cas, donner une (brève) analyse des obligations de preuve non prouvées et du stade d'aboutissement.
Les problèmes éventuels au niveau de la génération du code C peuvent rester sans commentaires
Le dossier devra comprendre une explication du rôle de chaque machine, et de la structuration globale.
 Le projet est à rendre avant la fin des partiels
 En plus du dossier, envoyer les machines, raffinements et implémentations.
 
 ## Spécifications détaillées
 ### Variables et Constantes
- Distibuteur
  - Le distibuteur a une capacité maximale de canettes. 
    - Lors de l'implémentation, on la fixe à 10 cannettes par type
  - Le distibuteur est rempli initialement
  - Le distibuteur a un seuil d'alerte de stock faible dans un des types de boisson
    - Lors de l'implémentation, on le fixe à 2 cannettes
  - La distibuteur doit pouvoir parfois rendre la monnaie. On a donc besoin d'un bac par type de pièce
  - On ne définit pas de capacité maximale par bac de pièce, elle est considérée grande devant les recettes de la machine.
  - On considère les bacs de pièces initialement vides

- Utilisateur
  - On considérera un seul utilisateur *Utilisateur*, qui sera directement en interaction avec la machine (on pourrait par la suite imaginer deux utilisateurs jean.utilisateur et pierre.utilisateur interagissant avec la machine au sein d'un composant *pièce* )
  - Un utilisateur dispose d'un certain nombre de pièces de chaque type
    - Lors de l'implémentation, on le fixe à 3x50cts et 10x10cts
    
### Opérations
- Distibuteur
  -  Le distibuteur doit signaler à l'utilisateur si le produit est disponible,
  - Le distibuteur doit signaler à l'utilisateur si elle peut rendre la monnaie. Le distibuteur peut rendre la monnaie à partir du moment où elle a 4 pièces de 10 cts
- Exploitant
  - L'exploitant peut remettre les produits à leur quantité maximum
  - L'exploitant peut vider complètement les bacs à pièce de monnaie.

- Processus d'achat
  - L'utilisateur verifie la disponibilité du produit
  - L'utilisateur vérifie qu'il a assez pour acheter
  - L'utilisateur verifie la possibilité de rendu de monnaie
  - Achat : 
    - L'utilisateur donne ses pieces
    - Le distributeur reçoit les pieces
    - Le distributeur donne le produit
    - L'utilisateur recupère le produit
  - La machine indique à l'exploitant si le stock devient inquétant

## Machines abstraites, raffinement et Implémentation
voir fichier .mch joints


