*** Settings ***
Resource  ../resources/testes_recursos_serverest.resource
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador



*** Test Cases ***
Cenário de Teste: Cadastro de usuário administrador
    [Tags]   teste_sucesso
    Acessar a página de login ServeRest
    Clicar em cadastre-se
    Digitar um nome
    Digitar um e-mail
    Digitar uma senha
    Escolher perfil de usuário administrador
    Clicar em cadastrar

Cenário de Teste: Login de acesso com usuário cadastrado
    [Tags]   teste_sucesso
    Acessar a página de login ServeRest
    Digitar um e-mail
    Digitar uma senha
    Clicar em entrar

Cenário de Teste: Excluir um usuário
    [Tags]   teste_sucesso
    Acessar a página de login ServeRest
    Clicar em cadastre-se
    Digitar um nome
    Digitar um e-mail
    Digitar uma senha
    Escolher perfil de usuário administrador
    Clicar em cadastrar
    Clicar em listar usuários
    Clicar em excluir usuário

Cenário de Teste: Cadastrar Produto
    [Tags]   teste_sucesso
    Acessar a página de login ServeRest
    Clicar em cadastre-se
    Digitar um nome
    Digitar um e-mail
    Digitar uma senha
    Escolher perfil de usuário administrador
    Clicar em cadastrar
    Clicar em Cadastrar Produtos
    Digitar nome do Produto
    Digitar preço do Produto
    Digitar descrição do Produto
    Digitar quantidade do Produto
    Clicar em cadastrar P


Cenário de Teste: Excluir um Produto
    [Tags]   teste_sucesso
    Acessar a página de login ServeRest
    Clicar em cadastre-se
    Digitar um nome
    Digitar um e-mail
    Digitar uma senha
    Escolher perfil de usuário administrador
    Clicar em cadastrar
    Clicar em listar produtos
    Clicar em excluir produto