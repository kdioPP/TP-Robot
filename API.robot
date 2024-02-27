*** Settings ***                                                                                       
Library    Collections                                                                                 
Library    RequestsLibrary                                                                             
                                                                                                       
Suite Setup    Create Session  ChuckNorris  https://api.chucknorris.io/                 
                                                                                                       
*** Test Cases ***                                                                                     
                                                                                                       
Get Request Test                                                                                                                                    
                                                                                                       
    ${resp_google}=   GET On Session  ChuckNorris  /jokes/random  expected_status=200  
    Log To Console  ${resp_google.json()}[value]                                                                      
                                                                                                                                        