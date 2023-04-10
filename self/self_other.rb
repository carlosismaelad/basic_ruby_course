# Com o self é possível criar métodos de classe,  
# que não precisam de uma instância para serem chamados. 

class Foo
  def self.bar
    puts self
  end
end
 
Foo.bar