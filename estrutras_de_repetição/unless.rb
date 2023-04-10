product_status = 'open'

unless product_status == 'closed'
  check_change = 'can not'
else
  check_change = 'can'
end

puts "You #{check_change} change the product"