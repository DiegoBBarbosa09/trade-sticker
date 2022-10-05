*** Settings ***
Documentation                Pagina Dashboard

Library                      Browser

*** Keywords ***
Usuario Logado
    ${mensagem}            Set Variable    Aquela figurinha incrível a um clique de distância.
    Get Text               css=.header-content strong    should be    ${mensagem}

Buscar Usuario
    [Arguments]            ${target}
    Fill Text              input[placeholder^=Busque]        ${target}
    Click                  css=button >> text=Buscar


Selecionar Figurinha
    [Arguments]            ${name}
    Click                  xpath=//img[@alt='${name}']/..


Entrar em Contato
    Click                   css=button >> text=Entrar em contato

Enviar Mensagem para Contato
    [Arguments]             ${nome_figurinha}
    ${msg_esperada}         Set variable    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${nome_figurinha}, bora negociar?
    Switch Page             NEW
    Wait For Elements State    css=p >> text=${msg_esperada}    visible    5