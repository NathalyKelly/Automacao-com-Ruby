#language: pt

@#nathaly_monteiro
@consulta_cep @api
Funcionalidade: Consulta de CEP pela Via Cep
  Sendo preciso informações de um cep
  Executo um get
  Para obter informações do cep informado

  @obtem_endereco
  Esquema do Cenário: Consultar Cep
    Dado que eu tenho o cep <cep> para a pesquisa no Via CEP
    Quando eu efetuo a requisição de informações do endereço
    Então eu valido que o endereço é retornado corretamente para o CEP <cep>

    Exemplos:
      | cep      |
      | 12321100 |
