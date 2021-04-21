module SpecHelper
  def via_cep
    Client::ViaCepClient.new
  end
end
