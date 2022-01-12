*Settings*

Documentation       Ações Customizadas

*Keywords*
Go To Home Page
    Go To           ${BASE_URL}

    Wait For Elements State     css=.carousel        visible     5

Go To Form
    Click       text=Fazer Pix

    # Checkpoint
    Wait For Elements State     css=.modal-card-head >> text=PIX
    ...     visible     5

Fill Form
    [Arguments]     ${pix}

    Select Options By   css=.field select           text                ${pix}[banco]
    Fill text           css=input[id="chave-pix"]   ${pix}[chave-pix]
    Fill text           css=input[id="valor"]       ${pix}[valor]

Submit Form

    Click               css=button >> text=Enviar PIX

Value Should Be Visible
    [Arguments]     ${saldo-restante}
    
    Wait For Elements State     css=.navbar-item >> text=Olá Papito, seu saldo é R$ 900
    ...     visible     5

