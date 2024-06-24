
Dado('que eu envio uma requisição para a API') do
  @result = @client.get_api
end

Quando('eu recebo a resposta JSON') do
  @result_json = JSON.parse(@result.body)
end

Então('a resposta deve conter a chave "typeOfEstablishment"') do
  expect(@result_json).to have_key('typeOfEstablishment')
end

E('eu imprimo um estabelecimento aleatório desta chave') do
  types = @result_json['typeOfEstablishment']
  random_type = types.sample
  p "Estabelecimento: #{random_type}"
end
