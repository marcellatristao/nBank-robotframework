*Settings*

Resource        ${EXECDIR}/resources/base.robot
Library         ${EXECDIR}/resources/factories/dados.py

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Nbank deve estar online
    Get title   equal       nBank by QAninja

Deve verificar saldo
    Wait For Elements State
    ...     css=.navbar-item >> text=Olá Papito, seu saldo é R$ 1000
    ...     visible     5


Fazer PIX

    ${pix}     Factory Pix

    Go To Form
    Fill Form       ${pix}
    Submit Form
    Go To Home Page
    Value Should Be Visible