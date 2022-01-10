*Settings*

Documentation       Aqui contém o arquivo principal do projeto

Library             Browser
Library             String

*Variables*
${BASE_URL}         https://nbank.vercel.app/


*Keywords*
Start Session
    New Browser     chromium    headless=False
    New Page        ${BASE_URL}

End Session
    Take Screenshot