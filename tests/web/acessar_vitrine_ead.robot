*** Settings ***
Documentation  Acessar curso pela vitrine
Resource            ../../hooks/HOOKS.robot
Resource            ../../hooks/HOOKS.robot
Resource           ../steps/ead_vitrine_steps.robot


*** Variables ***
${SEARCH_TITLE}    Top 10 cursos
${COURSE_NAME}     Administração Bacharelado


*** Test Cases ***
CT1: Acessar a Página de Inscrição 
    Given   Que eu estou na página inicial
    When    Procuro pelo Título  ${SEARCH_TITLE}
    And     Na vitrine de ofertas encontro  ${COURSE_NAME}
    And     Clico em "EAD"
    Then    Deveria ir para a pagina de inscrição     





