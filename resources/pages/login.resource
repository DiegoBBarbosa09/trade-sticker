*** Settings ***
Documentation                    Pagina Inicial de login

Library                          Browser

*** Keywords ***
Pagina Login
    New Page               https://trade-sticker-dev.vercel.app/

Botao Logar
    [Arguments]            ${email}        ${password}
    Fill Text              css=input[name=email]       ${email}
    Fill Text              css=input[name=password]    ${password}
    Click                  css=button >> text=Entrar

Mensagem de Alerta
    [Arguments]            ${msg_esperada}
    ${alet_temp}           Set Variable        css=.Toastify__toast-body div >> text=${msg_esperada}
    Wait For Elements State      ${alet_temp}    visible    2

Validacao Alert Sem Senha
      [Arguments]            ${email}        
    Fill Text              css=input[name=email]       ${email}
    Click                  css=button >> text=Entrar

Validacao Alert Sem Email
    [Arguments]            ${password}  
    Fill Text              css=input[name=password]    ${password}
    Click                  css=button >> text=Entrar

Validacao Alert Dados Em Branco
    Click                  css=button >> text=Entrar