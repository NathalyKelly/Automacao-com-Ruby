#language: pt

@#nathaly_monteiro
@cadastro @web
Funcionalidade: Registro de um novo cadastro no sistema
  Sendo um usuário sem acesso ao sistema
  Executo o fluxo de registro 
  Para obter o acesso ao sistema

  Contexto: Registro
    Dado que acessa o site
    E clico no botão de cadastro

  @novo_registro
  Esquema do Cenário: Registro de um novo usuário com sucesso
    Quando preenche os campos de um novo usuário
    E seleciona a opção atual
    E informa a "<renda_mensal>" e "<renda_extra>"
    E seleciona a situação no Serasa, SPC ou outros
    E seleciona o motivo do emprestimo
    E informa o "<valor_emprestimo>"
    E preenche os campos com os dados de email e telefone
    E cria a senha para acesso "<senha>"
    E seleciona a flag do Termo de Uso
    E clica em Ver Minha Analise
    Então visualiza a mensagem de "Pedido em análise"

    Exemplos:
      | renda_mensal | renda_extra | valor_emprestimo | senha  |
      | 3000         | 500         | 1000             | 123456 |

  @registro_pre_aprovado
  Esquema do Cenário: Registro de um usuário pré aprovado
    Quando preenche os campos "<nome>", "<data_nasci>" e "<cpf>"
    E seleciona a opção atual
    E informa a "<renda_mensal>" e "<renda_extra>"
    E seleciona a situação no Serasa, SPC ou outros
    E seleciona o motivo do emprestimo
    E informa o "<valor_emprestimo>"
    E preenche os campos com os dados de "<email>" e "<tel>"
    E cria a senha para acesso "<senha>"
    E seleciona a flag do Termo de Uso
    E clica em Ver Minha Analise
    Então visualiza a mensagem de "Você foi pré-aprovado!"

    Exemplos:
      | nome                | data_nasci | cpf         | renda_mensal | renda_extra | valor_emprestimo | email          | tel         | senha  |
      | Nathaly Monteiro jF | 17/03/1997 | 01817878069 | 3000         | 500         | 5000             | test@teste.com | 11960646587 | 123456 |
