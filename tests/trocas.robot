*** Settings ***
Documentation                Teste de negociação de figutinhas da copa

Resource                     ${EXECDIR}/resources/main.resource

Test Setup                   Iniciar Teste
Test Teardown                Finalizar Teste


*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    [Tags]                          neymar
    Fazer Login    
    Buscar Usuario                  Legend
    Selecionar Figurinha            Neymar Jr
    Entrar em Contato
    Enviar Mensagem para Contato    Neymar Jr
    Take Screenshot


