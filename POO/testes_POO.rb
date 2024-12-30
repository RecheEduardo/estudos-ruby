# A programação orientada a objetos tambem se faz presente em ruby, com ela
# é possível criar estruturas mais complexas e utilizar de um código robusto
# e seguro, trazendo vários benefícios para a implementação de um sistema.

class Aluno
    attr_reader :nome, :idade
    @ultimo_nome

    # attr_acessor: controle total do objeto para leitura e escrita
    # attr_reader: apenas permite a leitura do objeto
    # attr_writer: apenas permite a escrita do objeto

    # Métodos utilizados para DEFINIR os atributos do objeto
    def initialize (name, age)
        @nome = name
        @idade = age
    end

    # Métodos utilizados para ACESSAR os atributos do objeto | substituido pelo attr_reader
    # def getNome
    #     @nome
    # end

    # def getIdade
    #     @idade
    # end

    def setUltimoNome(ultimoNome)
        @ultimo_nome = ultimoNome
    end
    
    def mostrarDados
        "Nome: #{self.nome} #{@ultimo_nome}| Idade: #{self.idade} anos"
    end
    
end

# 1 -Criação de novos objetos e utilização do constructor para preencher os objetos criados
aluno1 = Aluno.new("Eduardo" , 18)
aluno2 = Aluno.new("João" , 21)
aluno3 = Aluno.new("Vinicius" , 32)
aluno4 = Aluno.new("Carla" , 24)

# 2 - Alocando os objetos criados num vetor
sala_de_aula = [aluno1, aluno2, aluno3, aluno4]

# 3 - Acessando dinamicamente os alunos dentro do vetor
sala_de_aula.each do | aluno |
    puts "#{aluno.nome}, #{aluno.idade} anos" # output: Eduardo, 18 anos
end

# 4 - Acessando diretamente pelo método do objeto
puts("")
puts aluno1.mostrarDados
puts aluno2.mostrarDados
puts aluno3.mostrarDados
puts aluno4.mostrarDados

aluno1.setUltimoNome("Reche") # Adicionando valores de acesso fora do reader
puts aluno1.mostrarDados