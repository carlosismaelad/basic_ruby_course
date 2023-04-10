# A variável self aponta para o Objeto onde ela se encontra.  
# No caso está apontando para uma instância da classe Foo e, 
# por isso, as instruções puts foo e puts self retornam o mesmo resultado.

class Foo
  attr_accessor :teste
  def bar
    puts self
  end
 end
 
foo = Foo.new
puts foo
foo.bar