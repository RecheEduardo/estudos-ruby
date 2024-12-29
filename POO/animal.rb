class Animal
    attr_reader :nome

    def initialize(nome)
        @nome = nome
    end
end

class Felino < Animal # Felino herda a característica de um animal por ter nome também
    attr_reader :porte

    def initialize(nome, porte)
        super(nome) # super é a função que herda as características do elemento pai
        @porte = porte
    end

    def acenar # Todo felino mia, logo, esse método está disponível para todos
        "Olá, sou um felino"
    end
end

felino1 = Felino.new("Gato", "Pequeno")
felino2 = Felino.new("Jaguatirica", "Médio")
felino3 = Felino.new("Leão", "Grande")

felinos = [felino1, felino2, felino3]

puts ""
felinos.each do | felino |
    puts "#{felino.nome} é um Felino de #{felino.porte} Porte"
end
puts ""

class Gato < Felino
    attr_reader :raça

    @apelido

    def initialize(porte, raça)
        super("Gato", porte) # Nome é herdado de animal, Porte é herdado de Felino
        @raça = raça
    end

    def setApelido(apelido)
        @apelido = apelido
    end

    def getApelido
        @apelido
    end

    def acenar
        "Miau! sou um Gato!" 
        # Como o gato é um felino, ele pode miar! O nome disso é polimorfismo, 
        # pois ele altera diretamente os métodos de felino.
    end
end

gato1 = Gato.new("Pequeno" , "Siamês")
gato1.setApelido("Cacau")

gato2 = Gato.new("Médio" , "Ceilão")
gato2.setApelido("Aladin")

gato3 = Gato.new("Grande" , "Ragdoll")
gato3.setApelido("Caramelo")

gatos = [gato1, gato2, gato3]

gatos.each do | gato |
    puts "#{gato.getApelido} é um gato da raça #{gato.raça} e é de #{gato.porte} Porte"
end
puts ""

puts "Oi, eu sou o #{gato2.getApelido}! e como sou um #{gato2.nome}, logo, eu sei fazer isso: #{gato2.acenar}" 
