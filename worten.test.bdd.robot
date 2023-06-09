*** Settings ***
Documentation    Essa suíte será testa o site do www.Worten.pt
Resource         worten.resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cenário 00 - Aceitando cookies
    [Documentation]    Esse teste aceita todos os cookies
    [Tags]             Aceita_cookies
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Então a modal deve desaperecer

Cenário 01 - Verifica login
    [Documentation]    Esse teste verifica o login do usuário
    [Tags]             Login
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em Olá! Iniciar Sessão
    E clicar em Iniciar Sessão
    Então deve ser redirecionado para a página de login

Cenário 02 - Verificação do menu "Produtos"
    [Documentation]    Esse teste verifica o menu Produtos
    [Tags]             Verifica_produtos
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em "Produtos"
    Então deve retornar um menu de produtos com várias opções
    
Cenário 03 - Verificação Produto Tablet
    [Documentation]    Esse teste verifica o elementos produtos
    [Tags]             Pesquisa_produtos
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em "Produtos"
    E clicar em "Informática"
    E clicar em "Tablets"
    Então verifica se aparece a opção tablet

Cenário 04 - Adicionando produto ao carrinho
    [Documentation]    Esse teste adiciona produto ao carrinho
    [Tags]             Adiciona_carrinho
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em "Produtos"
    E clicar em "Informática"
    E clicar em "Tablets"
    Então clica no produto Tablet 
    E adiciona ao carrinho
    E verifica se foi adicionado ao carrinho

Cenário 05 - Remover produto do carrinho
    [Documentation]    Esse teste remove o produto do carrinho
    [Tags]             Remove_produto
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em "Produtos"
    E clicou em "Informática"
    E clicou em "Tablets"
    Então clica no produto Tablet 
    E adiciona ao carrinho
    E verifica se foi adicionado ao carrinho
    E remova o produto Tablet 
    E o carrinho deve ficar vazio

Cenário 06 - Adicionando uma "TV" ao carrinho
    [Documentation]    Esse teste adiciona uma TV ao carrinho
    [Tags]             Adiciona_TV
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    E pesquisou por TVs
    E clicou na opção tvs
    Quando clicar na opção de uma tv
    E adicionar ao carrinho
    Então verifica se foi adicionado ao carrinho

Cenário 07 - Removendo uma TV do carrinho
    [Documentation]    Esse teste remove uma TV ao carrinho
    [Tags]             Remove_TV
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    E pesquisou por TVs
    E clicou na opção tvs
    Quando clicar na opção de uma tv
    E adicionar ao carrinho
    Então verifica se foi adicionado ao carrinho
    E remove o produto tv do carrinho
    E o carrinho deve estar vazio

Cenário 08 - Adicionando um iphone ao carrinho
    [Documentation]    Esse teste adiciona smartphone ao carrinho
    [Tags]             Adiciona_iphone
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    E pesquisou por iphone
    E clicou na opção de iphone
    E clicou no produto iphone
    Quando adicionar a opção de iphone no carrinho
    Então verifica se foi adicionado ao carrinho

Cenário 09 - Removendo um iphone do carrinho
    [Documentation]    Esse teste remove um smartphone do carrinho
    [Tags]             Remove_iphone
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    E pesquisou por iphone
    E clicou na opção de iphone
    E clicou no produto iphone
    Quando adicionar a opção de iphone no carrinho
    Então verifica se foi adicionado ao carrinho
    E remova o iphone do carrinho
    E verifica o carrinho

Cenário 10 - Adicionando uma cama ao carrinho
    [Documentation]    Esse teste adiciona uma cama ao carrinho
    [Tags]             Adiciona_cama
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando pesquisar por cama
    E redirecionar para as opções de camas
    Então clica na opção de cama
    E adicione a opção de cama no carrinho
    E verifica se adicionou ao carrinho

Cenário 11 - Removendo uma cama do carrinho
    [Documentation]    Esse teste remove uma cama do carrinho
    [Tags]             Adiciona_cama
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando pesquisar por cama
    E redirecionar para as opções de camas
    E clica na opção de cama
    Então adicione a opção de cama no carrinho
    E verifica se foi adicionado ao carrinho
    E remova a cama do carrinho
    E verifica o carrinho

Cenário 12- Verificação do menu "Serviços"
    [Documentation]    Esse teste verifica o menu Serviços
    [Tags]             Verifica_Serviços
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando o usuário clicar em "Serviços"
    Então deve retornar um menu de serviços com várias opções

Cenário 13 - Adicionar maquina de café no carrinho
    [Documentation]    Esse teste adiciona uma maquina de café ao carrinho
    [Tags]             Adiciona_Maquinadecafé
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando pesquisou por maquina de café
    E clicou na opção maquina de café
    E clicou na opção "Máquina de Café DELTA Q Mini Qool Cinzento"
    Então adicione "Máquina de Café DELTA Q Mini Qool Cinzento" ao carrinho
    E verifica se foi adicionado ao carrinho

Cenário 14 - Remover maquina de café do carrinho
    [Documentation]    Esse teste remove uma maquina de café do carrinho
    [Tags]             Remove_Maquinadecafé
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando pesquisou por maquina de café
    E clicou na opção maquina de café
    E clicou na opção "Máquina de Café DELTA Q Mini Qool Cinzento"
    E adicionou "Máquina de Café DELTA Q Mini Qool Cinzento" ao carrinho
    E verificou se foi adicionado ao carrinho
    Então remove a maquina de café do carrinho
    E o carrinho deve ficar vazio

Cenário 15 - Adicionar livro no carrinho
    [Documentation]    Esse teste adiciona o livro no carrinho
    [Tags]             Adiciona_Livro
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando pesquisou livros
    E clicou na opção livros
    E clicou na opção Livro
    Então adicione Livro
    E verifica se adicionou ao carrinho

Cenário 16 - Remover livro do carrinho
    [Documentation]    Esse teste remove livro do carrinho
    [Tags]             Remove_Livro
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    E pesquisou livros
    E clicou na opção livros
    E clicou na opção Livro
    Quando adicionou Livro
    E verificou se adicionou ao carrinho
    Então remove o livro do carrinho
    E o carrinho deve estar vazio
   
Cenário 17 - Verificar a opção Levanta grátis na loja em 15 minutos
    [Documentation]    Esse teste verifica a opção Levanta grátis na loja em 15 minutos
    [Tags]             Verifica_Opção
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando clicar na opção "Levanta grátis na loja em 15 minutos" 
    Então deve aparecer a lista de entregas rápidas

Cenário 18 - Verifica a opção Recebe em casa em 2 horas 
    [Documentation]    Esse teste Verifica a opção Recebe em casa em 2 horas
    [Tags]             Verifica_Opção
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando clicar na opção "Recebe em casa em 2 horas" 
    Então deve aparecer a lista de entregas rápidas

Cenário 19 - Verifica a opção 3x sem juros** TAEG 0%
    [Documentation]    Esse teste verifica a opção 3x sem juros** TAEG 0%
    [Tags]             Verifica_Opção
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando clica na opção "3x sem juros** TAEG 0%"
    Então deve aparecer a frase " Crédito Worten"

Cenário 20 - Verifica a opção Preço mínimo garantido
    [Documentation]    Esse teste verifica a opção Preço mínimo garantido
    [Tags]             Verifica_Opção
    Dado que o usuário está na home page www.worten.pt
    E aceitou o cookies
    Quando clica na opção "Preço mínimo garantido"
    Então deve aparecer a frase "Preço Mínimo Garantido"

# Cenário 21 - Criação de conta na Worten
#     [Documentation]    Esse teste verifica a opção Preço mínimo garantido
#     [Tags]             Cria_Conta
#     Dado que o usuário está na home page www.worten.pt
#     E aceitou o cookies
#     E clicou em "Olá! Iniciar Sessão"
#     E clicou em "Criar Conta"
#     Quando o usuário preencher todos os campos
#     # E clicar em aceitar os termos
    # E clicar em "Aceitar e Criar Conta"
    # Então deve aparecer um modal com a seguinte mensagem "É necessário confirmar a criação de conta. Usa o link de confirmação enviado para o teu endereço de email."

# Cenário 22 - Criação de conta na Worten com não preenchimento do campo apelido
#     [Documentation]    Esse teste verifica a opção Preço mínimo garantido
#     [Tags]             Verifica_Opção
#     Dado que o usuário está na home page www.worten.pt
#     E aceitou o cookies
#     E clicou em "Olá! Iniciar Sessão"
#     E clicou em "Criar Conta"
#     Quando o usuário esquecer de preencher o campo apelido que é obrigatório
#     Então deve aparecer uma mensagem embaixo do campo "Apelido Obrigatório"
#     E não deve ser possível proceder clicando em "Criar Conta"

# Cenário 23 - Criação de conta na Worten com erro
#     [Documentation]    Esse teste verifica a opção Preço mínimo garantido
#     [Tags]             Verifica_Opção
#     Dado que o usuário está na home page www.worten.pt
#     E aceitou o cookies
#     E clicou em "Olá! Iniciar Sessão"
#     E clicou em "Criar Conta"
#     Quando o usuário esquecer de flegar o "Li e aceito os Termos e Condições e confirmo que tenho mais de 16 anos de idade."
#     Então deve aparecer uma mensagem embaixo do campo "Por favor, aceita Termos e Condições"
#     E não deve ser possível proceder