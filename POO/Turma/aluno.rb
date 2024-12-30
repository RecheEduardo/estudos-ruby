require_relative "pessoa"

class Aluno < Pessoa
    attr_reader :nome, :idade, :matricula

    def initialize(nome, idade, matricula)
        super(nome, idade)
        @matricula = matricula
    end

    def apresentar
        puts "#{acenar} Sou #{@nome}, tenho #{@idade} anos e minha matrícula é #{@matricula}"
    end
end