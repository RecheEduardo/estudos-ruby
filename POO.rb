# A programação orientada a objetos tambem se faz presente em ruby, com ela
# é possível criar estruturas mais complexas e utilizar de um código robusto
# e seguro, trazendo vários benefícios para a implementação de um sistema.

class Aluno
    @nome
    @idade

    # Métodos utilizados para DEFINIR os atributos do objeto
    def setNome(name)
        @nome = name
    end

    def setIdade(age)
        @idade = age
    end

    # Métodos utilizados para ACESSAR os atributos do objeto
    def getNome
        @nome
    end

    def getIdade
        @idade
    end   
end

# 1 -Criação de novos objetos
aluno1 = Aluno.new
aluno2 = Aluno.new
aluno3 = Aluno.new
aluno4 = Aluno.new

# 2 - Utilizando os métodos para preencher os objetos criados
aluno1.setNome("Eduardo")
aluno1.setIdade(18)
aluno2.setNome("João")
aluno2.setIdade(21)
aluno3.setNome("Vinicius")
aluno3.setIdade(32)
aluno4.setNome("Carla")
aluno4.setIdade(24)

# 3 - Alocando os objetos criados num vetor
sala_de_aula = [aluno1, aluno2, aluno3, aluno4]

# 4 - Acessando dinamicamente os alunos dentro do vetor
sala_de_aula.each do | aluno |
    puts "#{aluno.getNome}, #{aluno.getIdade} anos" # output: Eduardo, 18 anos
end