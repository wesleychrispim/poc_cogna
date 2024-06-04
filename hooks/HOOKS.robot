Language: ptbr
*** Configurações ***
Biblioteca    SeleniumLibrary
Biblioteca    ../commom/VariaveisAmbiente.py
Recurso       ../commom/constants.robot
Recurso       ../commom/integracao_zephyr/IntegracaoZephyr.resource

*** Variáveis ***
${BROWSER}    chrome
${BASE_URL}    https://vitrineavancadahml.z13.web.core.windows.net/anhanguera/inscreva-se/ 

*** Palavras-Chave ***
Iniciação do teste
    Integração Zephyr - Validações
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Go To    ${BASE_URL}    

Finalização do teste
    Close All Browsers
    Integração Zephyr - Enviar resultado