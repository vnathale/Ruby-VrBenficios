Teste Automatizado com Ruby, Cucumber - Remoção de Textos após símbolos contidos na frase.
Este repositório contém um teste automatizado com a finalidade de validar a remoção de textos após um conter um símbolo contidos no meio da frase.

**Pré-requisitos**
Certifique-se de ter as seguintes ferramentas instaladas para executar o teste.

**Ferramentas Necessárias**
Ruby (versão recomendada: 2.7.0 ou superior)
Bundler

**Configuração do Ambiente**
1- Instalar Ruby
Verifique se o Ruby está instalado executando "ruby -v" no terminal.
Se não estiver instalado, siga as instruções no site oficial do Ruby (https://www.rubylang.org/en/documentation/installation/).

2- Instalar Bundler
Execute o comando "gem install bundler" no terminal.

3- Instalar Dependências
Certifique-se que o projeto, contenha um arquivo "Gemfile" com o seguinte conteúdo:

source 'https://rubygems.org'
gem 'cucumber'
gem 'rspec'

Se não conter, crie um arquivo "Gemfile" dentro do projeto e copie e cole o conteúdo a cima.

Após a certificar que tenha o arquivo "Gemfile"
Execute o comando "bundle install" no terminal.

**Estrutura do Projeto**
"features/": Diretório contendo os arquivos de features e step definitions do Cucumber.
  "features/classes/remocao_simbolos.rb": Arquivo contendo os métodos para serem utilizados nas definições dos passos
  "features/step_definitions/remocao_simbolos_steps.rb": Arquivo contendo as definições dos passos (steps) em Ruby.
  "features/support/env.rb": Arquivo de configuração do ambiente do Cucumber.
  "features/remocao_simbolos.feature": Arquivo de definição dos cenários de teste.
"Gemfile": Arquivo de configuração das dependências do projeto.

**Executando o Teste**
Clone este repositório: https://github.com/Nardinhox/Teste-Altera-o-String-VR.git
Navegue até o diretório raiz do projeto
Execute o comando "bundle exec cucumber" no terminal.

**Cenários**
Cenário 1
Dado a string de entrada “bananas, tomates # e ventiladores”
E os marcadores [“#”, “!”]
Então a saída esperada é: “bananas, tomates” 

Cenário 2
Dado a string de entrada “o rato roeu a roupa $ do rei % de roma”
E os marcadores [“%”, “!”]
Então a saída esperada é: “o rato roeu a roupa $ do rei”

Cenário 3
Dado a string de entrada “the quick brown fox & jumped over * the lazy dog”
E os marcadores [“&”, “*”, “%”, “!”]
Então a saída esperada é: “the quick brown fox”

**Critérios de Aceite**
Crie um método que receba dois parâmetros: uma string e um array.
Essa função deve remover todo o texto que vier após qualquer um dos símbolos recebidos no array
