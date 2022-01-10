*Settings*

Documentation       Verifica se o app está online

Resource            ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Nbank deve estar online
    Get title   equal       nBank by QAninja

Deve verificar saldo
    Wait For Elements State
    ...     css=.navbar-item >> text=Olá Papito, seu saldo é R$ 1000
    ...     visible     5