Dado('que acessa o site') do
  lendico.load
  expect(page).to have_current_path('https://frontend-authentication.lendico.net.br/', url: true)
end

Dado('clico no botão de cadastro') do
  lendico.btn_criar_conta.click
  expect(lendico.h1_validation_text).to have_text('Vamos começar')
end

Quando('preenche os campos {string}, {string} e {string}') do |nome, data_nasci, cpf|
  lendico.dados_pessoais(nome, data_nasci, cpf)
end

Quando('seleciona a opção atual') do
  lendico.div_ocupacao.set true
  lendico.option_clt.click
end

Quando('informa a {string} e {string}') do |renda_mensal, renda_extra|
  lendico.rendas_financeiras(renda_mensal, renda_extra)
end

Quando('seleciona a situação no Serasa, SPC ou outros') do
  lendico.label_opcao_biros_credito.set true
end

Quando('seleciona o motivo do emprestimo') do
  lendico.select_motivo_emprestimo.set true
  lendico.option_emprestimo.click
end

Quando('informa o {string}') do |valor_emprestimo|
  lendico.input_valor_emprestimo.set valor_emprestimo
end

Quando('preenche os campos com os dados de {string} e {string}') do |email, telefone|
  lendico.dado_de_contato(email, telefone)
end

Quando('cria a senha para acesso {string}') do |senha|
  lendico.input_senha.set senha
end

Quando('seleciona a flag do Termo de Uso') do
  lendico.p_aceitar_termo.set true
end

Quando('clica em Ver Minha Analise') do
  lendico.btn_ver_analise.click
end

Então('visualiza a mensagem de {string}') do |mensagem|
  expect(page).to have_text(mensagem)
end

Quando('preenche os campos de um novo usuário') do
  nome = Faker::Name.name.delete('.')
  data_nasci = Faker::Date.in_date_period(year: 2000).strftime('%d/%m/%Y')
  cpf = Faker::CPF.numeric
  lendico.dados_pessoais(nome, data_nasci, cpf)
end

E('preenche os campos com os dados de email e telefone') do
  lendico.dado_de_contato(Faker::Internet.email(domain: 'mailsac'), Faker::Base.numerify('114022####'))
end
