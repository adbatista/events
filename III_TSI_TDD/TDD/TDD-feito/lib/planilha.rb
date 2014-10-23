class Planilha
  def initialize(calculadora=Calculadora.new)
    @calculadora = calculadora
  end

  def calcula(valor_1)
    @calculadora.soma(valor_1, 5)
  end
end
