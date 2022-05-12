*** Settings ***
Library          SeleniumLibrary
Resource         agi_resource.robot
Test Setup       Abrir navegador 
#Test Teardown    Fechar navegador 

*** Variables ***
${URL}          https://blogdoagi.com.br/
${BROWSER}      chrome

*** Test Cases ***
Realiza uma pesquisa no site
   
   # abre o AUC e clica em cotar
   Title Should Be  title=Blog do Agi -
   Click Button  id=search-open
   
   # preenche o campo de pesquisa e clica em pesquisar

   Input Text  locator=(//input[@type='search'])[1]  Black Friday
   Click Button  id=submit
   