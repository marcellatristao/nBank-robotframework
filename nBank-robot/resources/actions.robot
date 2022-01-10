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

    Fill text       css=input[chave-pix="chave-pix"]   ${pix}[chave-pix]