class Pessoa
 [ :nome, :sobrenome, :idade, :altura ].each do |atributo|
  define_method atributo do 
    instance_variable_get "@#{atributo}"
  end
  define_method "#{atributo}=" do |valor|
    instance_variable_set "@#{atributo}", valor
  end
 end
end
