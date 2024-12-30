class Pessoa
    attr_reader :nome , :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def acenar
        "Olá!"
    end
end