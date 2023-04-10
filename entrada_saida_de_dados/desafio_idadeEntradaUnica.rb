# Calculando idade com entrada única de dados - ruby calcIdadeEntradaUnica.rb

require "date"

print "Olá! Nos informe a sua data de nascimento (DD/MM/AAAA): \n"

dataDeNascimento = gets.chomp.split("/").map(&:to_i)

diaDeNascimento = dataDeNascimento[0]
mesDeNascimento = dataDeNascimento[1]
anoDeNascimento = dataDeNascimento[2]

dataDeNascimento = Date.new(anoDeNascimento, mesDeNascimento, diaDeNascimento)

hoje = Date.today

idade = hoje.year - dataDeNascimento.year - ((hoje.month > dataDeNascimento.month || (hoje.month == dataDeNascimento.month && hoje.day >= dataDeNascimento.day)) ? 0 : 1)

if idade >= 18
  puts "Você tem #{idade} anos e é maior de idade"
else
  puts "Você tem #{idade} anos e é menor de idade"
end