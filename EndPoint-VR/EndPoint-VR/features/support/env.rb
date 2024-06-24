# Requisição das bibliotecas necessárias
require 'httparty'
require 'cucumber'
require 'rspec'
require_relative '../classes/classe_api'
require 'json'

# Instância da classe utlizada
Before do
    @client = APIClient.new
end