#language: pt
#encoding: utf-8

@FullSmoke

Funcionalidade: Validar busca por modelo, marca, versão e estoque

  @mark
  Cenario: Validar GET de marcas
    Dado que eu faça um GET na api de marcas
    Quando recebo o satus code positivo
    Então recebo o conteudo da requisição

  @model
  Cenario: Validar GET de modelos
    Dado que eu faça um GET na api de marcas passando o id <id>
      | id |
      | 2  |
    Quando recebo o satus code positivo
    Então recebo o conteudo da requisição

  @version
  Cenario: Validar GET de versões
    Dado que eu faça um GET na api de versões passando o modelId <modId>
      | modId |
      | 4     |
    Quando recebo o satus code positivo
    Então recebo o conteudo da requisição

  @stock
  Cenario: Validar GET de estoque
    Dado que eu faça um GET na api de estoque passando a page <page>
      | page |
      | 1    |
    Quando recebo o satus code positivo
    Então recebo o conteudo da requisição