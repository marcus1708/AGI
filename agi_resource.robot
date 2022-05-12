*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://blogdoagi.com.br/ 

*** Keywords ***
Abrir navegador
  Open Browser  https://blogdoagi.com.br/  ${BROWSER}
  Maximize Browser Window

Fechar navegador
  Capture Page Screenshot
  Close Browser   

Case 01: Pesquisa no site
 Realiza uma pesquisa no site