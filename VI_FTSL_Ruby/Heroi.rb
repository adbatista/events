module MinhaLib
  class MaisClasse
    def chama_array
      ::Array
    end
  end
  class MinhaClasse
    def hello
      puts 'Hello world'
    end
  end
  class Array
  end
end

MinhaLib::MinhaClass.new.hello
