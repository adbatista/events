class ConexaoBanco
  private :new
  def self.instance
    @instance ||= new
  end
end

require "singleton"
class ConexaoBanco
  include Singleton
end

