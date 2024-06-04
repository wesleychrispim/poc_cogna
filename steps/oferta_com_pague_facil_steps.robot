Language: ptbr
*** Configurações ***
Biblioteca      SeleniumLibrary
Recurso         ../pages/oferta_com_pague_page.robot
Recurso         ../steps/oferta_com_pague_facil_steps.robot


*** Palavras-chave ***
Dado que o usuario esta na home anhanguera
    Validar oferta pague facil

Quando pesquisar pelo curso
    Pesquisa produto
    
E seleciona a unidade Presencial
    Seleciona unidade
