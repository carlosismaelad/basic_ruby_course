def foo(name, &block)
  @name = name
  block.call
end
 
foo('Caros') { puts "Hellow #{@name}" }