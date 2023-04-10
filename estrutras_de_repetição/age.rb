result = ''

loop do 
  puts result
  puts "Selecione uma das opções abaixo:"
  puts "1 - Descobrir a idade de uma pessoa"
  puts "2 - Sair"
  print "Opção: "

  option = gets.chomp.to_i

  if option == 1
    print "Digite o ano de nascimento da pessoa: "
    year_of_birth = gets.chomp.to_i
    print "Insira o ano atual: "
    current_year = gets.chomp.to_i
    age = current_year - year_of_birth
    result = "Quem nasceu no ano de #{year_of_birth} completa #{age} em #{current_year}."
  elsif option == 2
    puts "Encerrando..."
    break
  else
    result = "Opção inválida!"
  end
  # Comando que limpa o console.
  system "clear"

end  