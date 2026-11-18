*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.amazon.com.br/
${MENU_LIVROS}    //a[contains(text(),'Livros')]
${CAMPO_PESQUISA_AMAZON}    twotabsearchtextbox
${BOTAO_PESQUISAR}    nav-search-submit-button


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador

    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_LIVROS}

Verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}
    

Entrar no menu "Livros"
    Click Element    locator=${MENU_LIVROS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

##Gherkin

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o titulo da pagina fica "Amazon.com.br | Tudo pra você, de A a Z."
Qaundo acessar o menu "Livros"
    Entrar no menu "Livros"
Então o título da página deve ficar "Amazon.com.br: Livros"
    Verificar se o titulo da pagina fica "Amazon.com.br: Livros"
 E o texto "O que todo mundo está lendo" deve ser exibido na página
    Verificar se aparece a frase "O que todo mundo está lendo"




