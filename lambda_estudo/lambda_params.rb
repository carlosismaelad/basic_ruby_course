# Uma lambda também pode receber parâmetros para sua execução

first_lambda = -> (names){ names.each { |name |puts name} }

names = ["joão", "maria", "pedro"]

first_lambda.call(names)