Language: ptbr
*** Configurações ***
Documentação    Suite base de teste

Recurso         ../../hooks/HOOKS.robot
Recurso         ../../steps/oferta_com_pague_facil_steps.robot


*** Variáveis ***
${curso}    Administracao Bacharelado


*** Casos De Teste ***
CT1: oferta com pague facil
    [Tags]    opch-t7
    [Inicialização]    Iniciação do teste

    Dado que o usuario esta na home anhanguera
    Quando pesquisar pelo curso
    E seleciona a unidade Presencial

    [Finalização]    Finalização do teste
