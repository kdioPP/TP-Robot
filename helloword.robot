*** Settings ***
Resource  fichier.resource
Test Setup  lancer prestashop
Test Teardown  Quitter prestashop
Library  Dialogs 

*** Test Cases ***
#helloword 
#  Log To Console  hello Word

#URL  
 # [Setup]
  #[Tags]  non régression
 # Affiche URL  ${URL}  

#Test en echec  
#  [Setup]
#  Should Be Equal  ${2}  ${4}

#Etape Manuel
#  Execute Manual Step  Etape Manuel

Verif titre
  Title Should Be  monPrestashop

Recherche T-Shirt
  Recherche Mot  T-Shirt
  Recherche Titre
  Recherche Texte  Il y a 1 produit.

Recherches
  [Template]  Recherche site web 
  T-shirt  Il y a 1 produit.
  MUG  Il y a 5 produits.  
  
*** Keywords ***
Recherche site web
  [Arguments]  ${Recherche Mot}  ${Recherche Texte}
  Recherche Mot  ${Recherche Mot}
  Recherche Titre
  Recherche Texte  ${Recherche Texte}