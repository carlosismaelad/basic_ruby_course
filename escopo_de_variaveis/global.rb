# O uso de variáveis globais é FORTEMENTE DESENCORAJADO 
# pois além de ser visível em qualquer lugar do código, 
# também pode ser alterada em inúmeros locais ocasionando 
# dificuldades no rastreamento de bugs.

class Bar
  def foo
    $global = 0
    puts $global
  end
 end
 
 class Baz
  def qux
    $global += 1
    puts $global
  end
 end
 
 bar = Bar.new
 baz = Baz.new
 bar.foo
 baz.qux
 baz.qux
 puts $global
# diferente da variável local, conseguimos chamar
# a variável global tanto dentro de classes e métodos quanto fora deles.

$global = 12345
puts $global