#language:pt

Funcionalidade: Teste da API VR
  Como um analista de testes
  Quero validar a resposta JSON da API VR
  Para que eu possa garantir que contém a chave necessária e imprimir um estabelecimento aleatório contido na mesma

  Cenário: Validar uma chave dentro da API VR e imprimir um estabelecimento aleatório contido dentro desta chave.
    Dado que eu envio uma requisição para a API
    Quando eu recebo a resposta JSON
    Então a resposta deve conter a chave "typeOfEstablishment"
    E eu imprimo um estabelecimento aleatório desta chave
