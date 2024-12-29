# A programação orientada a objetos tambem se faz presente em ruby, com ela
# é possível criar estruturas mais complexas e utilizar de um código robusto
# e seguro, trazendo vários benefícios para a implementação de um sistema.

class Aluno
    attr_reader :nome, :idade

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