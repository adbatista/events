require 'spec_helper'
require 'planilha'

describe Planilha do
  it 'chama soma na calculadora' do
    calculadora = double("calculadora")
    planilha = Planilha.new(calculadora)

    expect(calculadora).to receive :soma

    planilha.calcula(10)
  end

  it 'incrementa cinco no valor calculado' do
    calculadora = double("calculadora")
    planilha = Planilha.new(calculadora)
    allow(calculadora).to receive(:soma).and_return 15

    resultado = planilha.calcula(10)

    expect(resultado).to be == 15
  end
end
