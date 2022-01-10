*Settings*

Resource        ${EXECDIR}/resources/base.robot
Library         ${EXECDIR}/resources/factories/dados.py

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Fazer PIX

    ${pix}     Factory Pix

    Go To Form
    Fill Form       ${pix}
