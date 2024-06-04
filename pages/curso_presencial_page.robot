Language: ptbr
*** Configurações ***
Biblioteca      SeleniumLibrary
Recurso         ../commom/constants.robot


*** Variáveis ***
${PESQUISA.CURSO.INPUT}                     xpath=//input[contains(@placeholder,'Busque aqui seu curso')]
${PESQUISA.LUPA.CLICAR}                     xpath=/html/body/div[1]/div/div/div/div[1]/div
${PESQUISA.TIPO.CURSO.CLICAR}               xpath=//div[@class='sc-a627643c-134 brUty option '][contains(.,'Administração - Bacharelado')]
${UNIDADE.BTN.SELECIONAR.UNIDADE.CLICAR}    xpath=//div[@class='sc-756036d6-9 krPYql'][contains(.,'Selecione a sua unidadevalores de acordo com a unidade')]
${UNIDADE.CAMPO.CEP.UNIDADE.PREENCHER}      xpath=/html/body/div[2]/div[7]/div[1]/div/div[1]/div[1]/div/div/input
${UNIDADE.LUPA.UNIDADE.CLICAR}              xpath=//div[contains(@class,'sc-a627643c-103 kvFoWN')]
${UNIDADE.UNIDADE.CLICAR}                   xpath=/html/body/div[2]/div[7]/div[1]/div/div[2]/div[1]/div/div
${UNIDADE.BTN.CONFIRMAR.CLICAR}             xpath=//button[@color='primary'][contains(.,'Confirmar')]
${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}     xpath=


*** Palavras-chave ***
Validar usuario esta na vitrine
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}
    ...    Element Should Be Visible    ${PESQUISA.CURSO.INPUT}
    Page Should contain    IMAGINE SEU FUTURO... AGORA EXPLORE AS POSSIBILIDADES.

Pesquisa produto
    Input Text    ${PESQUISA.CURSO.INPUT}    Administracao
    Click Element    ${PESQUISA.LUPA.CLICAR}
    Click Element    ${PESQUISA.TIPO.CURSO.CLICAR}

Seleciona unidade
    Wait Until Element Is Enabled    ${UNIDADE.BTN.SELECIONAR.UNIDADE.CLICAR}
    Click Element    ${UNIDADE.BTN.SELECIONAR.UNIDADE.CLICAR}
    Wait Until Element Is Enabled    ${UNIDADE.CAMPO.CEP.UNIDADE.PREENCHER}
    Input Text    ${UNIDADE.CAMPO.CEP.UNIDADE.PREENCHER}    04444000
    Wait Until Element Is Enabled    ${UNIDADE.LUPA.UNIDADE.CLICAR}
    Click Element    ${UNIDADE.LUPA.UNIDADE.CLICAR}
    Wait Until Element Is Enabled    ${UNIDADE.UNIDADE.CLICAR}
    Click Element    ${UNIDADE.UNIDADE.CLICAR}
    Wait Until Element Is Enabled    ${UNIDADE.BTN.CONFIRMAR.CLICAR}
    Click Element    ${UNIDADE.BTN.CONFIRMAR.CLICAR}
    Wait Until Element Is Enabled    ${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}
    Click Element    ${UNIDADE.BTN.INSCREVA.SE.AGORA.CLICAR}
