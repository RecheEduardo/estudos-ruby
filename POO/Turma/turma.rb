class Turma
    attr_reader :alunos, :professor

    def initialize(alunos, professor)
        @alunos = alunos        
        @professor = professor        
    end

    def getTurma
        puts "\nDADOS DA TURMA:\n"
        puts "\nMatéria: #{professor.materia} | Professor(a): #{professor.nome}, #{professor.idade} anos"
        puts "\nAlunos:"
        getAlunos # Composição de métodos pela função de outros métodos
    end

    private
    def getAlunos # Encapsulamento de método de acesso aos alunos, pois só será acessado junto com o professor
        @alunos.each do | aluno |
            puts "Matrícula: #{aluno.matricula} | Nome : #{aluno.nome} | Idade: #{aluno.idade} anos"
        end
    end
end