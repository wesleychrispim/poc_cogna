Language: ptbr
*** Configurações ***
Biblioteca     SeleniumLibrary

Recurso    ../commom/constants.robot

*** Variáveis ***
${PESQUISA.CURSO.INPUT}    xpath=//input[contains(@placeholder,'Busque aqui seu curso')]
${PESQUISA.LUPA.CLICAR}    xpath=/html/body/div[1]/div/div/div/div[1]/div
${PESQUISA.TIPO.CURSO.CLICAR}    xpath=//div[@class='sc-a627643c-134 brUty option '][contains(.,'Administração - Bacharelado')]
${UNIDADE.BTN.SELECIONAR.UNIDADE.CLICAR}    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]
${MODALIDADE.BTN.CLICAR}   xpath=//button[contains(@class,'sc-a627643c-72 gKogaW inactive')]
${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}    xpath=//button[@color='primary'][contains(.,'Inscreva-se Agora')]
${NOME.CP.PREENCHER}    name=name
${Email.CP.PREENCHER}    name=email
${PHONE.CP.PREENCHER}    name=phoneNumber
${AVANCAR.BTN.CLICAR}    xpath=//button[@color='primary'][contains(.,'Avançar')]
${NOMECOMPLETO.CP.PREENCHER}    name=name
${CPF.CP.PREENCHER}    name=cpf
${RG.CP.PREENCHER}    name=rg  
${DATADENASCIMETO.CP.PREENCHER}   name=birthDate
${ANODECONCLUSAO.CP.PREENCHER}    name=yearConclusionHighSchool
${AVANCAR.BTN.CLICAR}    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/form[1]/button[1]/span[1]
${CEP.CP.PREENCHER} 



*** Palavras-Chave ***
Validar oferta pague facil

    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}   
    ...    Element Should Be Visible    ${PESQUISA.CURSO.INPUT}
    Page Should contain    IMAGINE SEU FUTURO... AGORA EXPLORE AS POSSIBILIDADES.
    
Pesquisa produto
    Input Text   ${PESQUISA.CURSO.INPUT}    Administracao   
    Wait Until Element Is Enabled    ${PESQUISA.LUPA.CLICAR}  
    Click Element    ${PESQUISA.LUPA.CLICAR}  
    Wait Until Element Is Enabled    ${PESQUISA.TIPO.CURSO.CLICAR}
    Click Element    ${PESQUISA.TIPO.CURSO.CLICAR}
    Wait Until Element Is Enabled    ${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}


Seleciona unidade
    
    Double Click Element    ${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}
    Wait Until Element Is Enabled    ${NOME.CP.PREENCHER}
    Input Text    ${NOME.CP.PREENCHER}    teste teste
    Input Text    ${Email.CP.PREENCHER}    teste@teste.com
    Input Text    ${PHONE.CP.PREENCHER}    11949437192
    Double Click Element    ${AVANCAR.BTN.CLICAR}
    Wait Until Element Is Enabled    ${NOMECOMPLETO.CP.PREENCHER}
    Input Text    ${NOMECOMPLETO.CP.PREENCHER}    teste teste
    Input Text    ${CPF.CP.PREENCHER}    999.587.640-08
    Input Text    ${RG.CP.PREENCHER}    4676554356
    Input Text    ${DATADENASCIMETO.CP.PREENCHER}    12/02/1995
    Input Text    ${ANODECONCLUSAO.CP.PREENCHER}    2023
    Double Click Element    ${AVANCAR.BTN.CLICAR}







