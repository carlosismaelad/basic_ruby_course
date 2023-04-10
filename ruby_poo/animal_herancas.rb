class Animal
  def comer
    puts 'nhame! nhame! nhame! nhame!'
  end

  def dormir
    puts 'ZzZzZzZzZzZz!'
  end
end

class Cachorro < Animal
  def latir
    puts 'Au! Au! Au!'
  end
end

cachorro = Cachorro.new
cachorro.comer
puts cachorro.dormir
cachorro.latir