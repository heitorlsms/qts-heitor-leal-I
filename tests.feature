# tests.feature
# Documento de Testes
# Cobertura: Verificação de email, identidade, senha, pontuação e ranking

Funcionalidade: Verificação de Email
  Como usuário do sistema
  Quero cadastrar um email válido
  Para receber notificações e recompensas corretamente

  Cenário: Email válido
    Dado que o usuário está na tela de cadastro
    Quando ele inserir um email válido (ex: usuario@exemplo.com)
    E clicar em "Cadastrar"
    Então o sistema deve aceitar o email
    E permitir que o cadastro continue

  Cenário: Email inválido
    Dado que o usuário está na tela de cadastro
    Quando ele inserir um email inválido (ex: usuario@exemplo)
    E clicar em "Cadastrar"
    Então o sistema deve exibir uma mensagem de erro "Email inválido"
    E impedir que o cadastro continue

---

Funcionalidade: Verificação de Identidade
  Como sistema de recompensas
  Quero verificar a identidade do usuário
  Para garantir que apenas usuários legítimos recebam moedas

  Cenário: Identidade válida
    Dado que o usuário forneceu documentos válidos
    Quando o sistema verificar os dados
    Então a identidade deve ser aprovada
    E o usuário poderá receber recompensas

  Cenário: Identidade inválida
    Dado que o usuário forneceu documentos inválidos ou incompletos
    Quando o sistema verificar os dados
    Então a identidade deve ser rejeitada
    E o sistema deve exibir uma mensagem "Documentação inválida"

---

Funcionalidade: Verificação de Correspondência de Senha
  Como usuário
  Quero confirmar minha senha
  Para garantir que não haja erros de digitação

  Cenário: Senhas correspondem
    Dado que o usuário digitou a senha e a confirmação
    Quando as duas senhas forem iguais
    Então o sistema deve permitir que o cadastro continue

  Cenário: Senhas não correspondem
    Dado que o usuário digitou a senha e a confirmação
    Quando as duas senhas forem diferentes
    Então o sistema deve exibir a mensagem "As senhas não coincidem"
    E impedir que o cadastro continue

---

Funcionalidade: Validação da Pontuação
  Como sistema de recompensas
  Quero atribuir moedas digitais corretamente
  Para incentivar o usuário a reciclar

  Cenário: Descarte válido
    Dado que o usuário descartou corretamente o lixo reciclável
    Quando o sistema registrar a ação
    Então o usuário deve receber a quantidade correta de moedas

  Cenário: Descarte inválido
    Dado que o usuário descartou lixo incorretamente
    Quando o sistema registrar a ação
    Então o usuário não deve receber moedas
    E o sistema deve exibir "Descarte inválido"

---

Funcionalidade: Correspondência de Ranking
  Como sistema de recompensas
  Quero atualizar o ranking dos usuários
  Para refletir corretamente quem mais contribui com a reciclagem

  Cenário: Atualização de ranking
    Dado que o usuário acumulou moedas após um descarte
    Quando o sistema calcular o ranking
    Então o usuário deve ser posicionado corretamente de acordo com a pontuação

  Cenário: Ranking empatado
    Dado que dois usuários possuem a mesma pontuação
    Quando o sistema calcular o ranking
    Então ambos devem aparecer na mesma posição
    E o sistema deve exibir critérios de desempate (ex: primeiro a alcançar a pontuação)