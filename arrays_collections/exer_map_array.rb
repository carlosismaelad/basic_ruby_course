array = []

i = 1

1..3.times do
  print "Digite o número do #{i}° número:"
  array.push gets.chomp.to_i

  i += 1
end

array.map! do |a|
  a**2
end

puts "Novo valor do array elevado ao quadrado"
puts "#{array}"