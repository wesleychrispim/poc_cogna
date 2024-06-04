*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}             https://vitrineavancadahml.z13.web.core.windows.net/anhanguera/inscreva-se/
${BROWSER}         Chrome
${SEARCH_TITLE}    Top 10 cursos
${COURSE_NAME}     Administração Bacharelado

*** Keywords ***
Que eu estou na página inicial
   Open Browser    ${URL}   ${BROWSER} 
   Maximize Browser Window
   Wait Until Page Contains Element     IMAGINE SEU FUTURO... AGORA EXPLORE AS POSSIBILIDADES.  # Aguarda o carregamento do conteúdo inicial

procuro pelo Título  
 [Arguments]    ${SEARCH_TITLE}
Wait Until Page Contains    ${SEARCH_TITLE}

Na vitrine de ofertas encontro 
[Arguments]  ${COURSE_NAME}
 WHILE  ${TRUE}
    Click Element    xpath=/html/body/div[2]/div[2]/div[2]/div/div[3]/div/svg
    Sleep    1s
    Run Keyword And Return If    Element Should Be Visible    xpath=//div[contains(text(), '${COURSE_NAME}')]  # verifica se um elemento específico está visível na página. Se o elemento for encontrado, a palavra-chave Element Should Be Visible é executada e retorna verdadeiro, fazendo com que o loop pare. Se o elemento não for encontrado, o loop continua.
    Click Element    xpath=//div[contains(text(), '${COURSE_NAME}')]
END

Clico em "EAD"
Wait Until Page Contains Element    xpath=//a[contains(text(), 'EAD')]
Click Element    xpath=//a[contains(text(), 'EAD')]

deveria ir para a pagina de inscrição     
Wait Until Page Contains    Inscrição