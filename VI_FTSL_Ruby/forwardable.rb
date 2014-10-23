class Filmes
  def initialize
    @colecao=[]
  end
  def << meu_filme
    @colecao << meu_filme
  end
  def [] (indice)
    @colecao[indice]
  end
end


#
require 'forwardable'
class Filme
  extend Forwardable
  def_delegator :@colecao, :[], :<<
  def initialize
    @colecao=[]
  end
end

