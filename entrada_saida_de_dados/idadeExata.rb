require 'date'

print "Informe o dia em que você nasceu:"
diaDeNascimento = gets.chomp.to_i

print "Informe o mês em que você nasceu:"
mesDeNascimento = gets.chomp.to_i

print "Informe o ano em que você nasceu:"
anoDeNascimento = gets.chomp.to_i

dataDeNascimento = Date.new(anoDeNascimento, mesDeNascimento, diaDeNascimento)
hoje = Date.today
idade = hoje.year - dataDeNascimento.year - ((hoje.month > dataDeNascimento.month || (hoje.month == dataDeNascimento.month && hoje.day >= dataDeNascimento.day)) ? 0 : 1)

if idade >= 18
  puts "Você tem #{idade} anos e é maior de idade"
else
  puts "Você tem #{idade} anos e é menor de idade"
end
