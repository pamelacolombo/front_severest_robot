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
  Open Browser  browser=headlesschrome  
  Maximize Browser Window

Fechar o navegador
  Close Browser

Criar nome
  ${palavra_randomica_nome}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica_nome}  Convert To Lower Case    ${palavra_randomica_nome}  
  Set Test Variable    ${NOME}             ${palavra_randomica_nome} 
Criar e-mail
  ${palavra_randomica_email}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica_email}  Convert To Lower Case    ${palavra_randomica_email} 
  Set Test Variable    ${EMAIL}                  ${palavra_randomica_email}@serverest.com.br
  Log                  ${EMAIL}  

Acessar a página de login ServeRest
  Go To   url=${URL}

Clicar em cadastre-se
  Wait Until Element Is Visible    locator=${cadastreseLink}
  Click Element                    locator=${cadastreseLink}

Digitar um nome
  Criar nome
  Wait Until Element Is Visible    locator=${nomeInput}
  Input Text                       locator=${nomeInput}  text=${NOME}  
  Sleep  2s

Digitar um e-mail
  Criar e-mail
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}  text=${EMAIL}
  Sleep  2s

Digitar uma senha
  Wait Until Element Is Visible    locator=${senhaInput}
  Input Password                   locator=${senhaInput}  password=1234@Pamela
  Sleep  2s

Escolher perfil de usuário administrador
  Wait Until Element Is Visible    locator=${administradorCheckbox}
  Select Checkbox                  locator=${administradorCheckbox}
  Sleep  2s

Clicar em cadastrar
  Wait Until Element Is Visible    locator=${cadastrarButton} 
  Click Button                     locator=${cadastrarButton} 
  Sleep  2s

# Login com usuário cadastrado
Clicar em entrar
  Wait Until Element Is Visible    locator=${entrarButton} 
  Click Button                     locator=${entrarButton} 
  Sleep  2s

#excluir usuário
Clicar em listar usuários
  Wait Until Element Is Visible    locator=${listarUsuario}   timeout=10s
  Click Element                   locator=${listarUsuario}
  Sleep  2s

Clicar em excluir usuário
  Wait Until Element Is Visible    locator=${excluirButton}
  Click Element                    locator=${excluirButton}
  Sleep  2s

#cadastrar um produto

Clicar em Cadastrar Produtos
  Wait Until Element Is Visible    locator=${cadastrarProdutos}   timeout=10s
  Click Element                    locator=${cadastrarProdutos} 
  Sleep  2s

Digitar nome do Produto
  Wait Until Element Is Visible    locator=${nomeProduto}  
  Input Text                       locator=${nomeProduto}    text=Copo
  Sleep  2s

Digitar preço do Produto
  Wait Until Element Is Visible    locator=${precoProduto}  
  Input Text                      locator=${precoProduto}    text=R$27,00
  Sleep  2s

Digitar descrição do Produto
  Wait Until Element Is Visible    locator=${descricaoProduto} 
  Input Text                       locator=${descricaoProduto}   text=Copo Termico na cor rosa, com capacidade de 500ml
  Sleep  2s

Digitar quantidade do Produto
  Wait Until Element Is Visible    locator=${quantidadeProduto}
  Input Text                       locator=${quantidadeProduto}  text=72
  Sleep  2s

Clicar em cadastrar P
  Wait Until Element Is Visible    locator=${cadastrarPButton}
  Click Element                    locator=${cadastrarPButton}
  Sleep  2s

#excluir um produto
Clicar em listar produtos
  Wait Until Element Is Visible    locator=${listarProduto}     timeout=10s
  Click Element                    locator=${listarProduto}  
  Sleep  2s

Clicar em excluir produto
  Wait Until Element Is Visible    locator=${excluirButton} 
  Click Element                    locator=${excluirButton} 
  Sleep  2s