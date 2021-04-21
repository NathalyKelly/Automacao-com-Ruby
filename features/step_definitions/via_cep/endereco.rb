Dado('que eu tenho o cep {int} para a pesquisa no Via CEP') do |cep|
  @via_cep_params = {
    "cep" => get_test_data('api_data address_infos zip')
  }
end

Quando('eu efetuo a requisição de informações do endereço') do
  @via_cep_response = via_cep.get_address(@via_cep_params['cep'])
end

Então('eu valido que o endereço é retornado corretamente para o CEP {int}') do |cep|
  address_info = get_test_data('api_data address_infos')
  expect(@via_cep_response.code).to eql(get_test_data('api_data http_status_code ok'))

  expect(@via_cep_response['cep'].delete('-')).to eql(address_info['zip'].to_s)
  expect(@via_cep_response['logradouro']).to eql(address_info['street'])
  expect(@via_cep_response['complemento']).to_not be_nil
  expect(@via_cep_response['bairro']).to eql(address_info['neighborhood'])
  expect(@via_cep_response['localidade']).to eql(address_info['city'])
  expect(@via_cep_response['uf']).to eql(address_info['state'])
  expect(@via_cep_response['ibge']).to eql(address_info['ibge'])
  expect(@via_cep_response['gia']).to eql(address_info['gia'])
  expect(@via_cep_response['ddd']).to eql(address_info['ddd'])
  expect(@via_cep_response['siafi']).to eql(address_info['siafi'])
end
