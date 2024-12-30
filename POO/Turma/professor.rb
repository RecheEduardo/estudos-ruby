require_relative "pessoa"

class Professor < Pessoa
    attr_reader :nome, :idade, :materia

    def initialize(nome, idade, materia)
        super(nome, idade)
        @materia = materia
    end

    def apresentar
        puts "#{acenar} Sou #{@nome}, tenho #{@idade} anos e dou aula de #{@materia}"
    end
end