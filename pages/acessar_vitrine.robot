*** Settings ***
Documentation  Arquivo com palavras-chave para acessar a vitrine EAD
Library  SeleniumLibrary

*** Keywords ***
Abrir a Página Principal
    [Documentation]  Abre a página incial do site
    Open Browser ${URL}  ${BROWSER}
    Maximize Browser Window

Clicar em
