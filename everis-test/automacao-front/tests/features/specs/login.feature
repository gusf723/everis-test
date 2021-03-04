#language: pt

@login
Funcionalidade: Home - Validar acesso a homepage do site
  Como usuário do site
  Quero realizar o login no sistema
  Para prosseguir com a navegação do meu interesse

  @validar_login
  Esquema do Cenário: Validar acesso aos cursos de automação
    Dado acessar a home do site
    Quando realizar o login no sistema '<tipo>'
    Então validar login realizado com sucesso '<tipo>'

    Exemplos:
      | tipo      |
      | positivo  |
      | negativo  |
