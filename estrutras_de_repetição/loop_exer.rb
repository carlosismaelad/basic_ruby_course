result = ''

loop do
  puts result
  puts "Insira os número que deseja calcular:"
  number1 = gets.chomp.to_i
  number2 = gets.chomp.to_i

  puts "O que deseja fazer? Selecione a opção abaixo:"
  puts "1 - Somar"
  puts "2 - Subtrair"
  puts "3 - Multiplicar"
  puts "4 - Dividir"
  puts "0 - Sair"

  option = gets.chomp.to_i

  if option == 1
    result = "O resultado da soma é " + (number1 + number2).to_s
       
  elsif option == 2
    result = "O resultado da subtração é " + (number1 - number2).to_s
        
  elsif option == 3
    result = "O resultado da multiplicação é " + (number1 * number2).to_s
        
  elsif option == 4

    if number2 == 0
      result = "Não é possível dividir um número por 0."
    else
      result = "O resultado da divisão é " + (number1 / number2).to_s
    end    
        
  elsif option == 0
    result =  "Saindo..."
    break
  else 
    result = "Opção inválida! Selecione um número entre 0 e 4"
  end

  system "cls"
  system "clear"

end