## Q.1
# Escreva um método que dado um inteiro x, um inteiro y e um inteiro w retorne todos os
# números divisíveis por w entre x e y.

def return_divisible_numbers(x, y, w)
  if x.is_a?(Integer) && y.is_a?(Integer) && w.is_a?(Integer)
    # [EN] Creating an array of integers from X to Y
    # [PT] Criando uma array de integers entre X e Y
    numbers = (x..y).to_a
    # [EN] Iterating over the array to select the numbers where the remainder of the division by W is equal to 0
    # [PT] Iterando sobre a array de números para selecionar aqueles cujo o resto da divisão por W é igual a 0
    numbers.select {|number| number % w == 0 }
  else
    puts "Todos os argumentos passados devem ser números inteiros."
  end
end

## Q.2
# Em um sistema web, cada usuário pode se inscrever em diversos eventos, cada evento
# possui até 3 prêmios que são distribuídos entre os usuários presentes. O sistema precisa
# guardar a informação sobre quem participou de cada evento e quem ganhou os prêmios.
# Modele um banco de dados capaz de suportar essas regras.

q2_answer = "
Caso os prêmios distribuídos nos eventos sejam padronizados (ex: bronze, prata e ouro),
minha proposta seria uma tabela de Users com as informações pertinentes a cada usuário,
uma tabela de Events, com as informações pertinentes a cada evento e uma tabela relacional
de UserEvents, com a id do usuário, a id do evento participado, um campo boolean (is_winner)
informando se o usuário é ganhador e um campo enum (prize) informando qual dos três prêmios
o usuário teria ganhado.

CREATE TABLE `users` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT
);

CREATE TABLE `events` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT
);

CREATE TABLE `user_events` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `is_winner` BOOLEAN default 0,
  `prize` ENUM(1, 2, 3),
  FOREIGN KEY(user) REFERENCES users(id),
  FOREIGN KEY(event) REFERENCES events(id)
);

Caso os prêmios sejam particulares a cada evento e seja do interesse da aplicação
guardar mais informações sobre eles (ex: descrição, data máxima para reinvidicação,
requisitos para ganhar etc.), minha proposta seria adicionar outras duas tabelas
relacionais: EventPrizes, com a id do evento e as informaçõs particulares dos
seus prêmios, e EventWinners, com a id do usuário e a id do prêmio recebido.
O design desse esquema está representado no arquivo q2_db_schema.png.
"

## Q.3
# Considere um sistema onde cada Usuário possui os atributos nome (String), idade
# (Inteiro) e profissão (String). Faça uma query que retorne o nome de todos os usuários com
# idade maior ou igual à 18 anos e cuja profissão seja programador ou desenvolvedor

q3_answer = "SELECT name
            FROM users
            WHERE age >= 18
            AND (profession = 'programador' OR profession = 'desenvolvedor');"

## Q.4
# Quais são as vantagens/desvantagens de se usar a arquitetura MVC (Model, View e
# Controller)?

q4_answer = "
As convenções na organização de uma aplicação com arquitetura MVC facilitam
o desenvolvimento rápido. Além disso, a divisão das tarefas entre Model, View e
Controller permitem uma manutenção mais ágil do sistema e que diversos desenvolvedores
trabalhem em conjunto e realizem testes sem interferir de forma prejudicial em
outras partes do código. Por outro lado, são muitos arquivos sendo gerenciados,
podendo afetar a performance da aplicação e a organização dos desenvolvedores.
Apesar do lado negativo citado, eu nunca tive uma experiência ruim com framework
MVC na minha curta vivência como desenvolvedora, o que me leva a crer que tudo
depende do que a aplicação requer para escolher um framework adequado.
"

## Q.5
# Usando Ruby on Rails, cite pelo menos uma forma de criar uma rota para um método
# chamado find_user dentro de um controller com o nome UsersController.

q5_answer = "
Caso a rota deva pertencer a um membro específico:
#{get '/users/:id', to: "users#find_user"}

Caso a rota não precise pertencer a um membro específico:
#{get '/find_user', to: "users#find_user"}
"

## Q.6
# Considerando a estrutura padrão de arquivos de um projeto feito com Ruby on Rails, em
# quais pastas devem se encontrar os models, os controllers e as views de um projeto? De
# que modo é possível saber qual controller é responsável por gerenciar uma determinada
# view?

q6_answer = "
Os models, controllers e views devem se encontrar em suas respectivas pastas
(ex: /controllers) dentro do diretório app.
Paths de exemplo:
./name_of_the_app/app/controllers/users_controller.rb
./name_of_the_app/app/models/user.rb
./name_of_the_app/app/views/users/find_user.rb

É possível saber qual controller é responsável por gerenciar uma determinada view
por meio da pasta a qual ela pertence (ex: Em app/views/events/show.rb, a view pertence
ao controller com o nome EventsController)
"

