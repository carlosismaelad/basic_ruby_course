def foo
  # Pode ser definida como local ou _local
  local = 'local é acessada apenas dentro desse método'
  print local
end

# chamando o método
foo

# o que aconteceria se tentássemos imprimir essa variável?
puts local
# gerou um erro
