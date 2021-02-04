#language:pt

Funcionalidade: Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | bruna.mec51@yahoo.com.br |
            | senha          | 548407                   |
            | senha_confirma | 548407                   |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | < email >          |
            | senha          | < senha >          |
            | senha_confirma | < senha_confirma > |
        Então devo ver a mensagem:"< mensagem_saida >"

        Exemplos:
            | email                    | senha  | confirma_senha | mensagem_saida                       |
            |                          | 548407 | 548407         | Oops! Informe seu email.             |
            | bruna.mec51@gmail.com.br |        |                | Oops! Informe sua senha.             |
            | bruna.mec51@gmail.com.br | 548407 | 075407         | Oops! Senhas não são iguais.         |
            |                          |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do Campo email
        
        Quando acesso a página  de Cadastro
        Então deve exibir o seguinte css: "input[type=email]" 

