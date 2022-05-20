module PageObjects
  class Lendico < SitePrism::Page
    set_url get_config('urls lendico')

    element :btn_criar_conta, '#account'
    element :h1_validation_text, 'h1[data-test="txt_welcome"]'
    element :input_nome, '#name'
    element :input_data_nasc, '#account__birth_dt'
    element :input_cpf, '#account__cpf'
    element :div_ocupacao, '#occupation'
    element :option_clt, 'option[value="REGISTERED_PRIVATE"]'
    element :input_salario, '#account__salary'
    element :btn_renda_extra, 'span.styled__CheckLabel-sc-16tr0zu-1'
    element :input_renda_extra, '#account__extra_income'
    element :label_opcao_biros_credito, '[for="account__negatived"]'
    element :select_motivo_emprestimo, '#lending_purpose'
    element :option_emprestimo, 'option[value="EDUC"]'
    element :input_valor_emprestimo, '#account__desired_lending_amount'
    element :input_email, '#account__email'
    element :input_telefone, '#account__mobile_number'
    element :input_senha, '#account__password'
    element :p_aceitar_termo, '[data-test="chk_accepts_terms"] [data-test="txt_description"]'
    element :btn_ver_analise, '[role="button"][title="ver minha análise"]'
    element :h1_text_validacao, 'h1[data-test="txt_credit_subtitle"]'

    def dados_pessoais(nome, data_nasci, cpf)
      input_nome.set nome
      input_data_nasc.set data_nasci
      input_cpf.set cpf
    end

    def rendas_financeiras(renda_mensal, renda_extra)
      input_salario.set renda_mensal
      btn_renda_extra.set true
      input_renda_extra.set renda_extra
    end

    def dado_de_contato(email, telefone)
      input_email.set email
      input_telefone.set telefone
    end
  end
end
