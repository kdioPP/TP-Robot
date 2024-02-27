*** Settings ***
Library  wraper.py

*** Test Cases ***
Test library 
  ${resultat}  nouveau calcul  7  True
  bidon
  Log To Console  ${resultat}
  Should Be Equal As Numbers  ${resultat}  1.5


Test nombre au hasard 
  ${nombre au hasard}  nombre au hasard
  Log To Console  ${nombre au hasard}
  Skip If  ${nombre au hasard} > 100


*** Keywords ***
nombre au hasard
  ${random} =	Evaluate	random.randint(0, sys.maxsize)	
  RETURN  ${random}
