
class APIClient
  include HTTParty
  base_uri 'https://portal.vr.com.br'

# Método para obter os dados da API
  def get_api
    self.class.get('/api-web/comum/enumerations/VRPAT')
  end
end
