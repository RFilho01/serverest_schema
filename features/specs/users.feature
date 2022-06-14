#language: pt

Funcionalidade: ServeRest - Usuários
    Eu como usuário do sistema
    Quero que ao utilizar a API de usuários
    Seja validado o comportamento esperado

    Swagger: https://serverest.dev/

    @#roberto_filho
    @register_user.post
    Esquema do Cenário: [CONTRACT] Validar o endpoint Users.post
        Enviar uma requisição para o endpoint Users.post
        Validar o retorno do usuário cadastrado
        Validar o tipo de cada campo do response

        Dado que tenho uma massa configurada do endpoint Users.post para o cenário "<tipo>"
        Quando chamar o endpoint Users.post
        Entao validar o retorno do endpoint Users.post para o cenário "<tipo>"
        
        Exemplos:
            | tipo     |
            | positivo |
            | negativo |
