*** Settings ***
Documentation        Arquivo principal do projeto

Library              Browser

Resource             pages/login.resource
Resource             pages/dash.resource

*** Keywords ***
Fazer Login
    Pagina Login
    Botao Logar                     papito@gmail.com        vaibrasil
    Usuario Logado

Iniciar Teste
     New Browser            headless=False

Finalizar Teste
    Sleep                        1
    Take Screenshot