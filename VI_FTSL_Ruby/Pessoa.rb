class Aluno
  def escreve
    puts "Não sei escrever"
  end
end

class Professor
  def ensina_escrever aluno
    def aluno.escreve
      puts "EEE! Aprendi a escrever!"
    end
  end
end
