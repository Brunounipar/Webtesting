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
    #Verificar se o titulo da pagina fica "Amazon.com.br: Livros"
    #Verificar se aparece a frase "o todo mundo está Lendo"

 