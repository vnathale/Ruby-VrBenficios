Dado('que a string de entrada é {string}') do |input_string|
    @input_string = input_string
end
  
E('os símbolos a serem considerados são {string}') do |simbolos_string|
    @simbolos = simbolos_string.split(', ')
end
  
Então('a saída esperada é {string}') do |saida_esperada|
    expect(RemoverSimbolos.remocao_texto_apos_simbolos(@input_string, @simbolos)).to eq(saida_esperada)
end
