*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    screenshot_root_directory=EMBED 
Library    OperatingSystem

*** Variables ***
${URL}                       https://www.worten.pt
${Cookies}                   /html/body/div[3]/div/div/div/section/div/header/h2
${Aceitar_cookies}           /html/body/div[3]/div/div/div/section/footer/button[2]
${Worten}                    //img[contains(@alt,'Worten Portugal')]
${Olá!_IniciarSessão}        //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[2]/nav/ul/li[1]
${Iniciar_Sessão}            //a[contains(.,'Iniciar Sessão')]
${Área_Cliente}              //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]
${List_Nav}                  //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[1]/nav/ul
${Produtos}                  //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[1]/nav/ul/li[1]/button
${Verifica_Marcas}           //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[4]/div[2]/nav/span[1]/a
${Informática}               //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[4]/div[2]/nav/div/ul/li[3]
${Tablets}                   //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[4]/div[3]/div[1]/div/div/ul/li[3]/a
${Produto_Tablets}           //*[@id="__layout"]/div/div/div/div[12]/div/div/div/div/article/div/div/section/div/div/ul/li[2]/div/a/div[3]/div[1]/div[2]
${Adiciona_Carrinho}         //button[@type='button'][contains(.,'Adicionar ao carrinho')]
${Ir_Carrinho}               //*[@id="__layout"]/div/div/div[2]/div/div/div/div[1]/div[2]/button[2]
${Verifica_Carrinho}         //*[@id="__layout"]/div/div/div/div[7]/div/div/div/div/div[1]/div/p
${Remover_Carrinho}          //button[@type='button'][contains(.,'Remover')]
${Carrinho_Vazio}            //*[@id="__layout"]/div/div/div/div[7]/div/div/div/div/div[2]/div/div/p[1]
${Click_Tvs}                 //p[@class='image-links__item-title'][contains(.,'SMARTPHONES')]
${Opção_Samsung}             //h3[@class='simple-link__label'][contains(.,'Samsung')]
${Título_TV}                 //p[@class='neu-11'][contains(.,'tvs 32')]
${Opção_Tv}                  (//span[contains(@class,'produc-card__name__link')])[1]
${Telemóveis_Smartphones}    //h2[contains(.,'Telemóveis e Smartphones')]
${Opção_Iphone}              //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[2]/div/form/div[2]/ul/li[1]/a/div/p
${Produto_Iphone14}          (//span[contains(@class,'produc-card__name__link')])[1]
${Opção_Cama}                //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[2]/div/form/div[2]/ul/li[1]/a/div/p
${Produto_Cama}              //*[@id="__layout"]/div/div/div/div[5]/div/div/div/div/article/div/div/section/div/div/ul/li[2]/div/a/div[1]
${Botão_Carrinho}            //a[@aria-label='Carrinho']
${Serviços}                  //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[1]/nav/ul/li[2]/button
${Verifica_Serviços}         (//span[contains(.,'Serviços')])[3]
${Maquina_Café}              (//p[contains(.,'máquina de café')])[1]
${Opção_maquinadecafé}       //*[@id="__layout"]/div/div/div/div[5]/div/div/div/div/article/div/div/section/div/div/ul/li[2]/div/a/div[3]/div[1]/div[1]/h3/span
${Livros}                    //*[@id="01G62RN8JEE428X09RB8JA900S"]/div[2]/div/div[2]/div/form/div[2]/ul/li[1]/a/div/p
${Opção_Livro}               (//span[@class='produc-card__name__link'])[1]
${Opção_LevantaGrátis}       //*[@id="__layout"]/div/div/div/div[6]/div/div/section/div/div/div/div/a[1]/p
${Lista_Entregas}            //h1[@class='page-title__title page-title__title--centered']
${OpçãoRecebeEmCasa}         //*[@id="__layout"]/div/div/div/div[6]/div/div/section/div/div/div/div/a[2]/p
${Opção_S/Juros}             //*[@id="__layout"]/div/div/div/div[6]/div/div/section/div/div/div/div/a[3]/p
${Credito_Worten}            //h1[contains(.,'Crédito Worten')]
${Opção_PreçoMinimo}         //*[@id="__layout"]/div/div/div/div[6]/div/div/section/div/div/div/div/a[4]/p
${Preço_Minimo}              //h1[contains(.,'Preço Mínimo Garantido')]
${Criar_Conta}               //a[contains(.,'Criar Conta')]
${Criar_conta_visible}       //*[@id="clientarea"]/div/div/div[1]/main/div[1]/p[2]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Dado que o usuário está na home page www.worten.pt
    Go To    url=${URL}

E aceitou o cookies
    Wait Until Element Is Visible    locator=xpath:/html/body/div[3]/div/div/div/section/div/header/h2
    Click Button    locator=xpath:${Aceitar_cookies} 

Então a modal deve desaperecer
    Wait Until Element Is Visible    ${Worten}      

Quando o usuário clicar em Olá! Iniciar Sessão
    Wait Until Element Is Visible    locator=xpath:${Olá!_IniciarSessão}
    Click Element At Coordinates    xpath=${Olá!_IniciarSessão}    0    40
    Click Element   locator=xpath:${Olá!_IniciarSessão} 

E clicar em Iniciar Sessão
    Click Link    ${Iniciar_Sessão}    

Então deve ser redirecionado para a página de login
    Wait Until Element Is Visible    ${Área_Cliente}       

Quando o usuário clicar em "Produtos"
    Wait Until Element Is Visible    locator=xpath:${Produtos}
    Click Element At Coordinates    xpath=${Produtos}    501   40
    Click Element    locator=xpath:${Produtos}

Então deve retornar um menu de produtos com várias opções
    Wait Until Element Is Visible    ${Verifica_Marcas} 

E clicar em "Informática"
    Wait Until Keyword Succeeds    3x    10s     Wait Until Element Is Visible    locator=xpath:${Informática} 
    Click Element    ${Informática} 

E clicar em "Tablets"
    Wait Until Keyword Succeeds    3x    10s     Wait Until Element Is Visible    locator=xpath:${Tablets}
    Click Link        locator=xpath:${Tablets}

Então verifica se aparece a opção tablet
    Wait Until Element Is Visible    xpath://*[@id="__layout"]//*[contains(text(), 'tablet')]
    ${element_list}      Get WebElements    xpath://*[@id="__layout"]//*[contains(text(), 'tablet')]
    ${first_element}     Set Variable    ${element_list}[0]
    Log             ${first_element.text}    

E adiciona ao carrinho
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho}
    Scroll Element Into View      locator=xpath:${Adiciona_Carrinho}
    Click Element    locator=xpath:${Adiciona_Carrinho}

E verifica se foi adicionado ao carrinho
    Wait Until Keyword Succeeds    3x    10s        Wait Until Element Is Visible    locator=xpath:${Ir_Carrinho}  
    Click Element    locator=xpath:${Ir_Carrinho}  
    Wait Until Element Is Visible   locator=xpath:${Verifica_Carrinho} 

E clicou em "Informática"
    Wait Until Keyword Succeeds    3x    10s     Wait Until Element Is Visible    locator=xpath:${Informática} 
    Click Element    ${Informática} 

E clicou em "Tablets"
    Wait Until Keyword Succeeds    3x    10s     Wait Until Element Is Visible    locator=xpath:${Tablets}
    Click Link    ${Tablets}

Então clica no produto Tablet 
    Wait Until Element Is Visible    locator=xpath:${Produto_Tablets}
    Click Element    locator=xpath:${Produto_Tablets}

Então adiciona ao carrinho
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho}
    Scroll Element Into View      locator=xpath:${Adiciona_Carrinho}
    Click Element    locator=xpath:${Adiciona_Carrinho}

E remova o produto Tablet
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

E o carrinho deve ficar vazio
    Wait Until Element Is Visible    ${Carrinho_Vazio}

E pesquisou por TVs
    Input Text    search    Tvs

E clicou na opção tvs
    Wait Until Element Is Visible    ${Título_TV}  
    Click Element    ${Título_TV}  

Quando clicar na opção de uma tv
    Wait Until Element Is Visible    ${Opção_Tv} 
    Click Element   ${Opção_Tv} 

E adicionar ao carrinho
    Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho}
    Click Element    locator=xpath:${Adiciona_Carrinho}

Então verificou se foi adicionado ao carrinho
    Wait Until Element Is Visible    locator=${Verifica_Carrinho}

E remove o produto tv do carrinho
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
    Wait Until Keyword Succeeds    3x    10s        Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho} 
    Click Button    locator=xpath:${Adiciona_Carrinho}

Então verifica se foi adicionado ao carrinho
    Wait Until Element Is Visible    ${Ir_Carrinho}  
    Click Button    ${Ir_Carrinho}  

E remova o iphone do carrinho
    Wait Until Element Is Visible    locator=xpath:${Remover_Carrinho}    
    Click Button    locator=xpath:${Remover_Carrinho}

E verifica o carrinho
    Wait Until Element Is Visible    ${Carrinho_Vazio}

Quando pesquisar por cama
    Input Text    locator=id:search    text=cama

E redirecionar para as opções de camas
    Wait Until Element Is Visible    ${Opção_Cama}   
    Click Element    ${Opção_Cama}    

Então clica na opção de cama
    Wait Until Element Is Visible    locator=xpath:${Produto_Cama}   
    Click Element    locator=xpath:${Produto_Cama}   

E adicione a opção de cama no carrinho
    Wait Until Keyword Succeeds    3x    10s        Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho}
    Click Button    locator=xpath:${Adiciona_Carrinho}

E verifica se adicionou ao carrinho
    Wait Until Element Is Visible    ${Botão_Carrinho}   

E clica na opção de cama
    Wait Until Element Is Visible    locator=xpath:${Produto_Cama}   
    Click Element    locator=xpath:${Produto_Cama}

Então adicione a opção de cama no carrinho
    Wait Until Keyword Succeeds    3x    10s        Wait Until Element Is Visible    locator=xpath:${Adiciona_Carrinho}
    Click Button    locator=xpath:${Adiciona_Carrinho}

E remova a cama do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Button    ${Remover_Carrinho}

Quando o usuário clicar em "Serviços"
    Wait Until Element Is Visible    locator=xpath:${Serviços} 
    Click Element At Coordinates    xpath=${Serviços}    0    40
    Click Button    locator=xpath:${Serviços}     

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

E clicou na opção Livro
    Wait Until Element Is Visible    ${Opção_Livro}    
    Click Element    ${Opção_Livro}    

Então adicione Livro
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E pesquisou livros
    Input Text    search    livros

Quando adicionou Livro
    Wait Until Element Is Visible    ${Adiciona_Carrinho} 
    Click Button    ${Adiciona_Carrinho}

E verificou se adicionou ao carrinho
   Wait Until Element Is Visible    ${Botão_Carrinho}  

Então remove o livro do carrinho
    Wait Until Element Is Visible    ${Remover_Carrinho}    
    Click Element    ${Remover_Carrinho}

E o carrinho deve estar vazio
    Wait Until Element Is Visible    ${Carrinho_Vazio}

Quando clicar na opção "Levanta grátis na loja em 15 minutos" 
    Wait Until Element Is Visible    locator=xpath:${Opção_LevantaGrátis} 
    Click Element   locator=xpath:${Opção_LevantaGrátis} 

Então deve aparecer a lista de entregas rápidas
    Wait Until Element Is Visible    ${Lista_Entregas} 

Quando clicar na opção "Recebe em casa em 2 horas" 
    Wait Until Element Is Visible    locator=xpath:${OpçãoRecebeEmCasa}
    Click Element   locator=xpath:${OpçãoRecebeEmCasa}  

Quando clica na opção "3x sem juros** TAEG 0%"
    Wait Until Element Is Visible    locator=xpath:${Opção_S/Juros}
    Click Element    locator=xpath:${Opção_S/Juros} 

Então deve aparecer a frase " Crédito Worten"
    Wait Until Element Is Visible    ${Credito_Worten}

Quando clica na opção "Preço mínimo garantido"
    Wait Until Element Is Visible    locator=xpath:${Opção_PreçoMinimo}
    Click Element    locator=xpath:${Opção_PreçoMinimo}

Então deve aparecer a frase "Preço Mínimo Garantido"
    Wait Until Element Is Visible   ${Preço_Minimo}  

E clicou em "Olá! Iniciar Sessão"
    Wait Until Element Is Visible    locator=xpath:${Olá!_IniciarSessão}
    Click Element At Coordinates    xpath=${Olá!_IniciarSessão}    0    40
    Click Element   locator=xpath:${Olá!_IniciarSessão} 

E clicou em "Criar Conta"
    Click Link    ${Criar_Conta}     
    
Quando o usuário preencher todos os campos
    Wait Until Keyword Succeeds    3x    10s    Wait Until Element Is Visible    ${Criar_conta_visible}
    Input Text                                id:input-name                     text:Marco
    Input Text                                id:input-last-name                text:Almeida
    Input Text                                id:input-email                    text:marco.devqa@gmail.com
    Input Password                            id:password-field                 text:marco1234