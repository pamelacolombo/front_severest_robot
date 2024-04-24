*** Settings ***
Library  SeleniumLibrary   
Library  String

*** Variables ***
${URL}                       https://front.serverest.dev/login
${cadastreseLink}            //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}                 //input[contains(@name,'nome')]
${administradorCheckbox}     //input[contains(@name,'administrador')]
${cadastrarButton}           //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]
${emailInput}                email
${senhaInput}                password
${entrarButton}              //button[@data-testid='entrar'][contains(.,'Entrar')]
${listarUsuario}             //a[@data-testid='listar-usuarios'][contains(.,'Listar Usuários')]
${excluirButton}             (//button[@type='button'][contains(.,'Excluir')])[1]
${cadastrarProdutos}          //a[@data-testid='cadastrar-produtos'][contains(.,'Cadastrar Produtos')]
${nomeProduto}               nome
${precoProduto}              price
${descricaoProduto}          id:description
${quantidadeProduto}         quantity
${cadastrarPButton}          //button[@data-testid='cadastarProdutos'][contains(.,'Cadastrar')]
${listarProduto}             //a[@data-testid='listar-produtos'][contains(.,'Listar Produtos')]


*** Keywords ***

Abrir o navegador 
  Open Browser  browser=chrome
  Maximize Browser Window

Fechar o navegador
  Close Browser

Criar massa de dados de acesso
  ${palavra_randomica_nome}  Generate Random String  length=8  chars=[LETTERS]
  Set Test Variable    ${NOME}             ${palavra_randomica_nome} 
  ${palavra_randomica_nome}  Convert To Lower Case    ${palavra_randomica_nome}   
  ${palavra_randomica_email}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica_email}  Convert To Lower Case    ${palavra_randomica_email} 
  Set Test Variable    ${EMAIL}                  ${palavra_randomica_email}@serverest.com.br
  Log                  ${EMAIL}  

Passo 1 - Acessar a página de login ServeRest
  Go To   url=${URL}

Passo 2 - Clicar em cadastre-se
  Wait Until Element Is Visible    locator=${cadastreseLink}
  Click Element                    locator=${cadastreseLink}

Passo 3 - Digitar um nome
  Wait Until Element Is Visible    locator=${nomeInput}
  Input Text                       locator=${nomeInput}  text=Pamela Teste 
  Sleep  2s

Passo 4 - Digitar um e-mail
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}  text=pamelateste@serverest.com.br
  Sleep  2s

Passo 5 - Digitar uma senha
  Wait Until Element Is Visible    locator=${senhaInput}
  Input Password                   locator=${senhaInput}  password=1234@Pamela
  Sleep  2s

Passo 6 - Escolher perfil de usuário administrador
  Wait Until Element Is Visible    locator=${administradorCheckbox}
  Select Checkbox                  locator=${administradorCheckbox}
  Sleep  2s

Passo 7 - Clicar em cadastrar
  Wait Until Element Is Visible    locator=${cadastrarButton} 
  Click Button                     locator=${cadastrarButton} 
  Sleep  2s

# Login com usuário cadastrado

Passo 2 - Digitar E-mail
  Wait Until Element Is Visible    locator=${emailInput}  
  Input Text                       locator=${emailInput}    text=pamelateste@serverest.com.br
  Sleep  2s

Passo 3 - Digitar Senha
  Wait Until Element Is Visible    locator=${senhaInput}
  Input Password                   locator=${senhaInput}   password=1234@Pamela
  Sleep  2s

Passo 4 - Clicar em entrar
  Wait Until Element Is Visible    locator=${entrarButton} 
  Click Button                     locator=${entrarButton} 
  Sleep  2s

#excluir usuário
Passo 5 - Clicar em listar usuários
  Wait Until Element Is Visible    locator=${listarUsuario}
  Click Element                    locator=${listarUsuario}
  Sleep  2s

Passo 6 - Clicar em excluir usuário
  Wait Until Element Is Visible    locator=${excluirButton}
  Click Element                    locator=${excluirButton}
  Sleep  2s

#cadastrar um produto

Passo 5 - Clicar em Cadastrar Produtos
  Wait Until Element Is Visible    locator=${cadastrarProdutos} 
  Click Element                    locator=${cadastrarProdutos} 
  Sleep  2s

Passo 6 - Digitar nome do Produto
  Wait Until Element Is Visible    locator=${nomeProduto}  
  Input Text                       locator=${nomeProduto}    text=Copo
  Sleep  2s

Passo 7 - Digitar preço do Produto
  Wait Until Element Is Visible    locator=${precoProduto}  
  Input Text                      locator=${precoProduto}    text=R$27,00
  Sleep  2s

Passo 8 - Digitar descrição do Produto
  Wait Until Element Is Visible    locator=${descricaoProduto} 
  Input Text                       locator=${descricaoProduto}   text=Copo Termico na cor rosa, com capacidade de 500ml
  Sleep  2s

Passo 9 - Digitar quantidade do Produto
  Wait Until Element Is Visible    locator=${quantidadeProduto}
  Input Text                       locator=${quantidadeProduto}  text=72
  Sleep  2s

Passo 10 - Clicar em cadastrar
  Wait Until Element Is Visible    locator=${cadastrarPButton}
  Click Element                    locator=${cadastrarPButton}
  Sleep  2s

#excluir um produto
Passo 5 - Clicar em listar produtos
  Wait Until Element Is Visible    locator=${listarProduto}  
  Click Element                    locator=${listarProduto}  
  Sleep  2s

Passo 6 - Clicar em excluir produto
  Wait Until Element Is Visible    locator=${excluirButton} 
  Click Element                    locator=${excluirButton} 
  Sleep  2s