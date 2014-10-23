require 'spec_helper'
require 'calc'

describe Calc do
  describe ".soma" do
    it 'deve somar dois valores' do
      valor_1 = 2
      valor_2 = 40

      resultado = Calc.soma(valor_1, valor_2)

      expect(resultado).to be == 42
    end

    it 'soma outros dois valores que não resultem em 42' do
      valor_1 = 5
      valor_2 = 10

      resultado = Calc.soma(valor_1, valor_2)

      expect(resultado).not_to be == 42
    end
  end

  describe '.divide' do
    it 'deve dividir dois valores' do
      valor_1 = 10
      valor_2 = 5

      resultado = Calc.divide(valor_1, valor_2)

      expect(resultado).to be == 2
    end

    it 'retorna zero quando divide por zero' do
      valor_1 = 5
      valor_2 = 0

      resultado = Calc.divide(valor_1, valor_2)

      expect(resultado).to be == 0
    end
  end

  describe '.subtrai' do
    it 'deve subtrair dois valores' do
      valor_1 = 8
      valor_2 = 2

      resultado = Calc.subtrai(valor_1, valor_2)

      expect(resultado).to be == 6
    end
  end
end
