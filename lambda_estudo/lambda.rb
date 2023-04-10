# first_lambda = lambda { puts "my first lambda"}
# first_lambda.call

# O que fizemos acima pode ser abreviado da forma abaixo:

first_lambda = -> { puts "my first lambda"}
first_lambda.call