Language: ptbr
*** Configurações ***
Biblioteca      SeleniumLibrary
Recurso         ../pages/curso_presencial_page.robot
Recurso         ../steps/curso_presencial_steps.robot


*** Palavras-chave ***
Dado que o usuario esta na vitrine
    Validar usuario esta na vitrine

Quando pesquisar pelo curso
    Pesquisa produto

E seleciona a unidade
    Seleciona unidade
