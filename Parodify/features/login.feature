#language: pt

Funcionalidade: Login
    Sendo um usuário perfeitamente cadastrado
    Quero acessar o sistema com um email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "bruna.mec51@yahoo.com.br" e "548407"
        Então deve ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro:"Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                    | senha  |
            | teste-parodify@404.com.br   | abc123 |
            |                          |        |
            | teste-parodify@yahoo.com.br |        |
            | teste-parodify@404.com.br   |        |

