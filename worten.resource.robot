*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ${DELAY}                     0.5
${URL}                       https://www.worten.pt
${Aceitar_cookies}           //button[@type='button'][contains(.,'Aceitar Tudo')]
${Worten}                    //img[contains(@alt,'Worten Portugal')]
${Olá!_IniciarSessão}        //button[contains(@class,'login-container button--tertiary button--lg button--white')]
${Iniciar_Sessão}            //a[contains(.,'Iniciar Sessão')]
${Área_Cliente}              //div[@class='client-area-v3']
${Produtos}                  //button[contains(@aria-label,'Produtos')]
${Verifica_Marcas}           //span[@class='highlighted-nav__title'][contains(.,'Marcas')]
${Informática}               (//button[@class='nav-tab__categories__button'][contains(.,'Informática')])[1]
${Tablets}                   //a[@href='/informatica-e-acessorios/tablets']
${Título_Tablets}            //h1[@class='page-title__title page-title__title--centered'][contains(.,'Tablets')]
${Produto_Tablets}           (//div[contains(@class,'product-card__flag flag--modal-disabled')])[1]
${Adiciona_Carrinho}         //button[@type='button'][contains(.,'Adicionar ao carrinho')]
${Ir_Carrinho}               //button[@type='button'][contains(.,'ir para carrinho')]
${Remover_Carrinho}          //button[contains(.,'Remover')]
${Carrinho_Vazio}            //p[@class='cart__product--empty__title font-1xl semibold neu-06'][contains(.,'Carrinho vazio')]
${Click_Tvs}                 //p[@class='image-links__item-title'][contains(.,'SMARTPHONES')]
${Opção_Samsung}             //h3[@class='simple-link__label'][contains(.,'Samsung')]
${Título_TV}                 //p[@class='neu-11'][contains(.,'tvs 32')]
${Opção_Tv}                  (//span[contains(@class,'produc-card__name__link')])[1]
${Telemóveis_Smartphones}    //h2[contains(.,'Telemóveis e Smartphones')]
${Opção_Iphone}              (//span[@class='bold'][contains(.,'iphone')])[1]
${Produto_Iphone14}          (//span[contains(@class,'produc-card__name__link')])[1]
${Opção_Cama}                (//span[@class='bold'][contains(.,'cama')])[1]
${Produto_Cama}               //span[contains(.,'vidaXL Estrutura de cama c/ gavetas 90x200 cm branco')]
${Botão_Carrinho}             //a[@aria-label='Carrinho']
${Serviços}                   //button[contains(@aria-label,'Serviços')]
${Verifica_Serviços}          (//span[contains(.,'Serviços')])[3]
${Maquina_Café}               (//p[contains(.,'máquina de café')])[1]
${Opção_maquinadecafé}        //span[@class='produc-card__name__link'][contains(.,'Máquina de Café DELTA Q Mini Qool Cinzento')]
${Livros}                     (//span[@class='bold'][contains(.,'livros')])[1]
${Opção_Livro}                (//span[@class='produc-card__name__link'])[1]
${Opção_LevantaGrátis}        //p[contains(.,'Levanta grátis na loja em 15 minutos')]
${Lista_Entregas}            //h1[@class='page-title__title page-title__title--centered']
${OpçãoRecebeEmCasa}         //a[contains(.,'Recebe em casa em 2 horas')]
${Opção_S/Juros}             //p[contains(.,'3x sem juros** TAEG 0%')]
${Credito_Worten}            //h1[contains(.,'Crédito Worten')]
${Opção_PreçoMinimo}         //p[contains(.,'Preço mínimo garantido')]
${Preço_Minimo}              //h1[contains(.,'Preço Mínimo Garantido')]
${Criar_Conta}               //a[contains(.,'Criar Conta')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
    # Set Selenium Speed    ${DELAY}

Fechar o navegador
    Close Browser
    # Set Selenium Speed    ${DELAY}

Dado que o usuário está na home page www.worten.pt
    Go To    url=${URL}

E aceitou o cookies
    Wait Until Element Is Visible    locator=${Aceitar_cookies}
    Click Button    locator=${Aceitar_cookies} 

Então a modal deve desaperecer
    Wait Until Element Is Visible    ${Worten}      

Quando o usuário clicar em Olá! Iniciar Sessão
    Click Button    ${Olá!_IniciarSessão} 

E clicar em Iniciar Sessão
    Click Link    ${Iniciar_Sessão}    

Então deve ser redirecionado para a página de login
    Wait Until Element Is Visible    ${Área_Cliente}       

Quando o usuário clicar em "Produtos"
    Click Button   ${Produtos}

Então deve retornar um menu de produtos com várias opções
    Wait Until Element Is Visible    ${Verifica_Marcas} 

E clicar em "Informática"
    Click Button    ${Informática} 

E clicar em "Tablets"
    Click Link    ${Tablets}
Então verifica se aparece a opção LENOVO M10 Plus + Capa + Pen(10.6'' - 128 GB - 4 GB RAM - Wi-Fi - Cinzento)
    Wait Until Element Is Visible    ${Produto_Tablets}      

E adiciona ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho}    
    Click Button    ${Adiciona_Carrinho}

E verifica se foi adicionado ao carrinho
    Wait Until Element Is Visible    ${Ir_Carrinho}  
    Click Button    ${Ir_Carrinho}  
    
E clicou em "Informática"
    Click Button    ${Informática} 

E clicou em "Tablets"
    Click Link    ${Tablets}

Então clica no produto Tablet LENOVO M10 Plus + Capa + Pen(10.6'' - 128 GB - 4 GB RAM - Wi-Fi - Cinzento)
    Wait Until Element Is Visible    ${Título_Tablets}  
    Click Element    ${Produto_Tablets}
E clicou no produto Tablet LENOVO M10 Plus + Capa + Pen(10.6'' - 128 GB - 4 GB RAM - Wi-Fi - Cinzento)
    Wait Until Element Is Visible    ${Título_Tablets}  
    Click Element    ${Produto_Tablets}  

Então adiciona ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho}    
    Click Button    ${Adiciona_Carrinho}

E remova o produto "Tablet LENOVO M10 Plus + Capa + Pen(10.6'' - 128 GB - 4 GB RAM - Wi-Fi - Cinzento)"" do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

E o carrinho deve ficar vazio
    Wait Until Element Is Visible    ${Carrinho_Vazio}

E pesquisou por TVs
    Input Text    search    Tvs

E clicou na opção tvs
    Wait Until Element Is Visible    ${Título_TV}  
    Click Element    ${Título_TV}  

Quando clicar na opção de tvs
    Wait Until Element Is Visible    ${Opção_Tv} 
    Click Element   ${Opção_Tv} 

Então remove o produto tv do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

E pesquisou por iphone
    Input Text    search    iphone

E clicou na opção de iphone
    Wait Until Element Is Visible    ${Opção_Iphone}   
    Click Element  ${Opção_Iphone}   

E clicou no produto iphone
    Wait Until Element Is Visible    ${Produto_Iphone14}  
    Click Element    ${Produto_Iphone14}  

Quando adicionar a opção de iphone no carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

Então verifica se foi adicionado ao carrinho
    Wait Until Element Is Visible    ${Ir_Carrinho}  
    Click Button    ${Ir_Carrinho}  

E remova o smartphone do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

E verifica o carrinho
    Wait Until Element Is Visible    ${Carrinho_Vazio}

Quando pesquisar por cama
    Input Text    search    cama

E clicar na opção de cama
    Wait Until Element Is Visible    ${Opção_Cama}   
    Click Element    ${Opção_Cama}    

Então clica na "vidaXL Estrutura de cama c/ gavetas 90x200 cm branco"
    Wait Until Element Is Visible    ${Produto_Cama}   
    Click Element    ${Produto_Cama}   

E adicione a "vidaXL Estrutura de cama c/ gavetas 90x200 cm branco" no carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E verifica se adicionou ao carrinho
    Wait Until Element Is Visible    ${Botão_Carrinho}     

E remova a cama do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

Quando o usuário clicar em "Serviços"
    Click Button    ${Serviços}     

Então deve retornar um menu de serviços com várias opções
    Wait Until Element Is Visible    ${Verifica_Serviços}

Quando pesquisou por maquina de café
    Input Text    search    maquina de café

E clicou na opção maquina de café
    Wait Until Element Is Visible    ${Maquina_Café} 
    Click Element     ${Maquina_Café}       

E clicou na opção "Máquina de Café DELTA Q Mini Qool Cinzento"
    Wait Until Element Is Visible    ${Opção_maquinadecafé}  
    Click Element    ${Opção_maquinadecafé}  
Então adicione "Máquina de Café DELTA Q Mini Qool Cinzento" ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho}    
    Click Button    ${Adiciona_Carrinho}

E adicionou "Máquina de Café DELTA Q Mini Qool Cinzento" ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E verificou se foi adicionado ao carrinho
    Wait Until Element Is Visible    ${Ir_Carrinho}  
    Click Button    ${Ir_Carrinho}  

Então remove a maquina de café do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

Quando pesquisou livros
    Input Text    search    livros

E clicou na opção livros
    Wait Until Element Is Visible    ${Livros}   
    Click Element    ${Livros}   

E clicou na opção "Livro Pai Rico, Pai Pobre - Edição 20 Anos de Robert T. Kiyosaki (Português-Brasil)"
    Wait Until Element Is Visible    ${Opção_Livro}    
    Click Element    ${Opção_Livro}    

Então adicione "Livro Pai Rico, Pai Pobre - Edição 20 Anos de Robert T. Kiyosaki (Português-Brasil)" ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E pesquisou livros
    Input Text    search    livros

Quando adicionou "Livro Pai Rico, Pai Pobre - Edição 20 Anos de Robert T. Kiyosaki (Português-Brasil)" ao carrinho
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E verificou se adicionou ao carrinho
   Wait Until Element Is Visible    ${Botão_Carrinho}  

Então remove o livro do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

E o carrinho deve estar vazio
    Wait Until Element Is Visible    ${Carrinho_Vazio}

Quando clicar na opção "Levanta grátis na loja em 15 minutos" 
    Click Element    ${Opção_LevantaGrátis} 

Então deve aparecer a lista de entregas rápidas
    Wait Until Element Is Visible    ${Lista_Entregas} 
Quando clicar na opção "Recebe em casa em 2 horas" 
    Click Link    ${OpçãoRecebeEmCasa}  

Quando clica na opção "3x sem juros** TAEG 0%"
    Click Element    ${Opção_S/Juros} 

Então deve aparecer a frase " Crédito Worten"
    Wait Until Element Is Visible    ${Credito_Worten}

Quando clica na opção "Preço mínimo garantido"
    Click Element    ${Opção_PreçoMinimo}

Então deve aparecer a frase "Preço Mínimo Garantido"
    Wait Until Element Is Visible   ${Preço_Minimo}  

E clicou em "Olá! Iniciar Sessão"
    Wait Until Element Is Visible    ${Olá!_IniciarSessão}
    Click Button   ${Olá!_IniciarSessão}

E clicou em "Criar Conta"
    Click Link    ${Criar_Conta}      
    
Quando o usuário preencher todos os campos
    Wait Until Element Is Visible             locator=id:input-name
    Input Text                                id:input-name             text:Marco
    Input Text                                id:input-last-name        text:Almeida
    Input Text                                id:input-email            text:marco.devqa@gmail.com
    Input Password                            id:password-field         text:marco1234