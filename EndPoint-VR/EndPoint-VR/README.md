Teste Automatizado com Ruby, Cucumber e HTTParty - Validação da API VR
Este repositório contém um teste automatizado com a finalidade de validar uma chave dentro da API VR e imprimir um estabelecimento aleatório contido dentro desta chave.

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
gem 'httparty'
gem 'rspec'

Se não conter, crie um arquivo "Gemfile" dentro do projeto e copie e cole o conteúdo a cima.

Após a certificar que tenha o arquivo "Gemfile"
Execute o comando "bundle install" no terminal.

**Estrutura do Projeto**
"features/": Diretório contendo os arquivos de features e step definitions do Cucumber.
  "features/classes/classe_api.rb": Arquivo contendo os métodos para serem utilizados nas definições dos passos
  "features/step_definitions/api_steps.rb": Arquivo contendo as definições dos passos (steps) em Ruby.
  "features/support/env.rb": Arquivo de configuração do ambiente do Cucumber.
  "features/TestePetz.feature": Arquivo de definição dos cenários de teste.
"Gemfile": Arquivo de configuração das dependências do projeto.

**Executando o Teste**
Clone este repositório: https://github.com/Nardinhox/Teste-EndPoint-VR.git
Navegue até o diretório raiz do projeto
Execute o comando "bundle exec cucumber" no terminal.

**Cenário**
1- Validar uma chave dentro da API VR e imprimir um estabelecimento aleatório contido dentro desta chave.
API: (https://portal.vr.com.br/api-web/comum/enumerations/VRPAT).

**Critérios de Aceite**
Crie um cenário de teste, utilizando Cucumber + Ruby + HTTParty, que valide que o JSON retornado pelo serviço
possui a chave “typeOfEstablishment” e print, aleatoriamente, um desses tipos de estabelecimentos.