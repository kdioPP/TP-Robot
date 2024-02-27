*** Settings ***
Library  SeleniumLibrary 

*** Variables ***
${URL}  http://www.qualifiez.fr/monPrestashop2/prestashop/index.php
${Loc_champrecherche}  xpath = //*[@id="search_widget"]/form/input[2] 

*** Keywords ***
Affiche URL
  [Arguments]  ${lien}
  Log To Console  ${lien}

lancer prestashop
  Log To Console  test prestashop
  Open Browser  ${URL}  edge

Quitter prestashop
  Log To Console  quitter prestashop
  Close Browser 

Recherche Mot
  [Arguments]  ${mot à chercher}
  Input Text  ${Loc_champrecherche}  ${mot à chercher}
  Press Keys  ${Loc_champrecherche}  RETURN

Recherche Titre 
  Title Should Be  Rechercher

Recherche Texte 
  [Arguments]  ${nombre de produit}
  Element Text Should Be  xpath = //*[@id="js-product-list-top"]/div[1]/p  ${nombre de produit}