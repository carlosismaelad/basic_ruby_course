# ruby exer_juridic_or_physical.rb

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end
 
    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end
 
  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end
 
    def add
      puts 'Pessoa Física Adicionada'
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end
 
Person::Juridic.new('C. D. Investimentos', '4241.123/0001.89').add
Person::Physical.new('Carlos Dourado', '123.456.789-00').add