module Client
  class ViaCepClient
    include HTTParty
    base_uri get_config('urls via_cep')
    default_timeout 10

    def get_address(cep)
      self.class.get("/ws/#{cep}/json")
    end
  end
end
