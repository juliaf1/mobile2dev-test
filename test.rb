# Q.1

def return_divisible_numbers(x, y, w)
  # [EN] Creating an array of integers from X to Y
  # [PT] Criando uma array de integers entre X e Y
  numbers = (x..y).to_a
  # [EN] Iterating over the array to select the numbers where the remainder of the division by W is equal to 0
  # [PT] Iterando sobre a array de números para selecionar aqueles cujo o resto da divisão por W é igual a 0
  numbers.select {|number| number % w == 0 }
end

# Q.3

