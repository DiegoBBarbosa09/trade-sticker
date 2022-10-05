*** Settings ***
Documentation        Login testes

Resource             ${EXECDIR}/resources/main.resource

Test Setup           Iniciar Teste
Test Teardown        Finalizar Teste


*** Test Cases ***
Deve logar com sucesso
    [Tags]                 login
    Pagina Login    
    Botao Logar            papito@gmail.com        vaibrasil
    Usuario Logado

    
Não Logar com senha invalida
    [Tags]                 senha_inv
    Pagina Login
    Botao Logar            papito@gmail.com        abc123
    Mensagem de Alerta    Credenciais inválidas, tente novamente!
    Sleep                 1




