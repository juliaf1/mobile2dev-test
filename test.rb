## Q.1
# Escreva um método que dado um inteiro x, um inteiro y e um inteiro w retorne todos os
# números divisíveis por w entre x e y.

def return_divisible_numbers(x, y, w)
  # [EN] Creating an array of integers from X to Y
  # [PT] Criando uma array de integers entre X e Y
  numbers = (x..y).to_a
  # [EN] Iterating over the array to select the numbers where the remainder of the division by W is equal to 0
  # [PT] Iterando sobre a array de números para selecionar aqueles cujo o resto da divisão por W é igual a 0
  numbers.select {|number| number % w == 0 }
end

## Q.2
# Em um sistema web, cada usuário pode se inscrever em diversos eventos, cada evento
# possui até 3 prêmios que são distribuídos entre os usuários presentes. O sistema precisa
# guardar a informação sobre quem participou de cada evento e quem ganhou os prêmios.
# Modele um banco de dados capaz de suportar essas regras.

q2_answer = "
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
  `prize` ENUM(0, 1, 2, 3),
  FOREIGN KEY(user) REFERENCES users(id),
  FOREIGN KEY(event) REFERENCES events(id)
);
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

q4_answer = ""

## Q.5
# Usando Ruby on Rails, cite pelo menos uma forma de criar uma rota para um método
# chamado find_user dentro de um controller com o nome UsersController.

q5_answer = ""

## Q.6
# Considerando a estrutura padrão de arquivos de um projeto feito com Ruby on Rails, em
# quais pastas devem se encontrar os models, os controllers e as views de um projeto? De
# que modo é possível saber qual controller é responsável por gerenciar uma determinada
# view?

q6_answer = ""

