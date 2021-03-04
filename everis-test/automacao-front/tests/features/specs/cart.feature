#language: pt

@carrinho
Funcionalidade: Home - validar adição de itens ao carrinho
  Como usuário do site
  Quero adicionar produtos ao carrinho
  Para prosseguir com a navegação do meu interesse

  @validar_valor_total_compra
  Esquema do Cenário: Validar valor total da compra no carrinho
    Dado acessar a home do site
    E realizar o login no sistema 'positivo'
    Quando adicionar um produto ao carrinho
    Então validar valor total da compra

