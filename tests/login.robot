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

Deve exibir notificacao se senha nao for informada
    [Tags]                senha
    Pagina Login
    Validacao Alert Sem Senha    papito@gmail.com            
    Mensagem de Alerta    Por favor, informe a sua senha secreta!

Deve exibir notificacao se email nao for informado
    [Tags]                email
    Pagina Login
    Validacao Alert Sem Email    vaibrasil            
    Mensagem de Alerta    Por favor, informe o seu email!

Deve exibir notificacao se nenhum dado for informado
    [Tags]                nenhum
    Pagina Login
    Validacao Alert Dados Em Branco            
    Mensagem de Alerta    Por favor, informe suas credenciais!





