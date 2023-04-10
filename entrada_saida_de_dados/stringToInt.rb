print "Informe um número inteiro:\n"

number1 = gets.chomp.to_i

print "Informe um segundo número:\n"

number2 = gets.chomp.to_i

soma = number1 + number2
subt = number1 - number2
mult = number1 * number2
divi = number1 / number2

puts "Os resultados das operações básicas com os números informados são:
\nSoma =  #{soma} 
\nSubtração = #{subt}  
\nMultiplicação = #{mult} 
\nDivisão = #{divi}"