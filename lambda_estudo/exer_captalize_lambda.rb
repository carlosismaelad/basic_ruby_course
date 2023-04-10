def capitalize_name(lambda_capitalize)
  lambda_capitalize.call('carlos')
  lambda_capitalize.call('dourado')
 end
 
lambda_capitalize = -> (name) { puts name.capitalize } 
capitalize_name(lambda_capitalize)
