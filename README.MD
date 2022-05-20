# Repositório

https://github.com/NathalyKelly/Automacao-com-Ruby

# Pré-condição

1. Deve ter a linguagem de programação Ruby instalado na máquina
2. Deve ter a gem bundler instalado na máquina
3. Acessar a pasta raiz do projeto e executar o comando bundle via linha de comando

# Drivers

Antes de rodar algum cenário Web você deve adicionar o driver do navegador em uma pasta reconhecida no path do sistema com a versão compatível a versão atual do seu navegador.

# Uso

Para executar algum cenário Web, basta mandar o comando:
`cucumber -t <TAG> -p <WEB>`

Para executar algum cenário de API, basta mandar o comando:
`cucumber -t <TAG> -p <API>`

**Obs.: DEVE OBRIGATORIAMENTE SER PASSADO A PLATAFORMA (api ou web) NA CHAMADA DO CENÁRIO**

# Mapeamento

- Os cenário estão em [features\specs\<SISTEMA>\<FLUXO>](features/specs)
- Os steps estão em [features\step_definitions\<SISTEMA>\<FLUXO>](features/step_definitions)
- OS mapeamentos das páginas estão em [features\page_objects\<SISTEMA>\<PAGINA>](features/page_objects)
- As referências dos page_objects estão em [features\support\spec_helper\<SISTEMA>](features/support/spec_helper)

# Metodos Criados

### Page_Objects
- [dados_pessoais(nome, data_nasci, cpf)](features/page_objects/lendico/cadastro_page.rb) > Método criado para facilitar preenchimentos de campos comuns;
- [rendas_financeiras(renda_mensal, renda_extra)](features/page_objects/lendico/cadastro_page.rb) > Método criado para facilitar preenchimentos de campos comuns;
- [dado_de_contato(email, telefone)](features/page_objects/lendico/cadastro_page.rb) > Método criado para facilitar preenchimentos de campos comuns;

### Commons
- [get_test_data(path)](features/support/commons/commons.rb) > Método criado para obtenção de dados da massa do arquivo [data.yml](features/support/data/data.yml);
- [get_config(path)](features/support/commons/commons.rb) > Método criado para obtenção de dados de configuração do arquivo [config.yml](features/support/config/config.yml);
- [get_data(path, data)](features/support/commons/commons.rb) > Método genérico para obtenção de dados passando o path da key que quer obter os dados;

### SpecHelper
- [lendico](features/support/spec_helper/lendico.rb) > Método para instanciação da page_object da página da Lendico;
- [via_cep](features/support/spec_helper/via_cep.rb) > Método para instanciação do client da página do ViaCEP;

# [Linkedin](https://www.linkedin.com/in/nathaly-silva-9ab537192/)
# Automacao-Ruby-Web
# Automacao-Ruby-Web
# Automacao-Ruby-Web
# Automacao-Ruby-Web
