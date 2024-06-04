Language: ptbr
*** Configurações ***
Documentação    Suite base de teste

Recurso         ../../hooks/HOOKS.robot
Recurso         ../../steps/curso_presencial_steps.robot


*** Variáveis ***
${curso}    Administracao Bacharelado


*** Casos De Teste ***
CT1: curso Presencial
    [Tags]    opch-t7
    [Inicialização]    Iniciação do teste

    Dado que o usuario esta na vitrine
    Quando pesquisar pelo curso
    E seleciona a unidade

    [Finalização]    Finalização do teste
