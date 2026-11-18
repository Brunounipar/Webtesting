*** Settings ***
Resource    amazon_resources.robot

Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
caso de teste 01 - Acesso ao menu "Livros"
    [Documentation]    Esses teste verifica o menu livros do site da amazon
    ...                e verifica a categoria o que todo mundo esta lendo
    [Tags]             menus    categorias    smooke
    Acessar a home page do site Amazon.com.br
    Verificar se o titulo da pagina fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Livros"
    Verificar se o titulo da pagina fica "Amazon.com.br: Livros"
    Verificar se aparece a frase "O que todo mundo está lendo"

caso de teste 02 - Acesso ao menu "Livros" em Gherkin 
    [Documentation]    Esse teste verifica o menu livros do site da amazon 
    ...                e verificar a categoria o que todo mundo esta lendo
    [Tags]             menus categorias smooke
    Dado que estou na home page da Amazon.com.br
    Qaundo acessar o menu "Livros"
    Então o título da página deve ficar "Amazon.com.br: Livros"
    E o texto "O que todo mundo está lendo" deve ser exibido na página
