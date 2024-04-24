*** Settings ***
Resource  ../resources/testes_recursos_serverest.resource
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Cenário de Teste: Cadastro de usuário administrador
    Passo 1 - Acessar a página de login ServeRest
    Passo 2 - Clicar em cadastre-se
    Passo 3 - Digitar um nome
    Passo 4 - Digitar um e-mail
    Passo 5 - Digitar uma senha
    Passo 6 - Escolher perfil de usuário administrador
    Passo 7 - Clicar em cadastrar

Cenário de Teste: Login de acesso com usuário cadastrado
    Passo 1 - Acessar a página de login ServeRest
    Passo 2 - Digitar E-mail
    Passo 3 - Digitar Senha
    Passo 4 - Clicar em entrar

Cenário de Teste: Excluir um usuário
    Passo 1 - Acessar a página de login ServeRest
    Passo 2 - Digitar E-mail
    Passo 3 - Digitar Senha
    Passo 4 - Clicar em entrar
    Passo 5 - Clicar em listar usuários
    Passo 6 - Clicar em excluir usuário

Cenário de Teste: Cadastrar Produto
    Passo 1 - Acessar a página de login ServeRest
    Passo 2 - Digitar E-mail
    Passo 3 - Digitar Senha
    Passo 4 - Clicar em entrar
    Passo 5 - Clicar em Cadastrar Produtos
    Passo 6 - Digitar nome do Produto
    Passo 7 - Digitar preço do Produto
    Passo 8 - Digitar descrição do Produto
    Passo 9 - Digitar quantidade do Produto
    Passo 10 - Clicar em cadastrar


Cenário de Teste: Excluir um Produto
    Passo 1 - Acessar a página de login ServeRest
    Passo 2 - Digitar E-mail
    Passo 3 - Digitar Senha
    Passo 4 - Clicar em entrar
    Passo 5 - Clicar em listar produtos
    Passo 6 - Clicar em excluir produto