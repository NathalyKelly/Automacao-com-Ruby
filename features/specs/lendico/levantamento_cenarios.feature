#language: pt

@#nathaly_monteiro
@levantamento_cenarios
Funcionalidade: Levantamento de Cenários da Página de Entrada
  Sendo uma candidata do processo seletivo
  Executo o levantamento dos cenários
  Para guiar o desenvolvimento das tarefas

@login_sucesso
Cenário: Login com sucesso
    Dado que acessa a tela de login
    Quando acessa com "teste@teste.com.br" e "mudar@1234"
    E clica em Entrar
    Then acessa o sistema com sucesso

@informacoesincorretas
  Esquema do Cenario: Email incorreto e Senha incorreta ao acessar o sistema
    Dado que acessa a tela de login
    Quando acessa com '<email>' e '<senha>'
    Então visualiza a '<validacao>'
      Exemplos:
        | email     | teste@teste.com.br                    | dkfhgsdk@teste.com.br                 |
        | senha     | 000000                                | mudar@123                             |
        | validacao | Ops, credenciais de acesso inválidas! | Ops, credenciais de acesso inválidas! |

@acessosememail
  Esquema do Cenario: Não informar o email para o login
    Dado acessa a tela de login
    Quando acessa com '<senha>'
    E clica em Entrar
    Então visualiza a '<validacao>'
      Exemplos:
        | senha     | mudar@123         |
        | validacao | Campo obrigatório |

@acessosemsenha
  Esquema do Cenario: Não informar a senha para o login
    Dado acessa a tela de login
    Quando acessa com '<email>'
    E clica em Entrar
    Então visualiza a '<validacao>'
      Exemplos:
        | email     | teste@teste.com.br |
        | validacao | Campo obrigatório  |

@esqueciasenha
  Cenário: Recuperar senha com email
    Dado que acessa a tela de login
    Quando acesso a página de esqueci minha senha
    E digito o email 'teste@teste.com.br' e clico em resetar senha
    E devo ver a mensagem de alerta 'Foi enviado para seu e-mail, um link para redefinição de sua senha de acesso.'
    Então retorno a página de login

@lembreiasenha
  Cenário: Lembrar a senha de acesso
    Dado que acessa a tela de login
    E acesso a página de esqueci minha senha
    Quando clico em Lembrei a Senha 
    Então retorno a página de login


@acessarsemcredenciais
  Cenário: Não informar o email e senha
    Dado acessa a tela de login
    Quando clica em Entrar
    Então visualiza a mensagem "Campo obrigatório"
