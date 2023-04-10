puts '--Lista De Compras--'

file = File.open('shopping_list.txt')

file.each do |line|
  puts line
end