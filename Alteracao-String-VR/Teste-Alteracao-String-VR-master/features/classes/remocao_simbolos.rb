
# Método que remove todo o texto que vem após qualquer símbolo presente no array
class RemoverSimbolos
  def self.remocao_texto_apos_simbolos(input_string, simbolos)
      simbolos.each do |simbolo|
        input_string = input_string.split(simbolo).first.strip
      end
      input_string
  end
end