require_relative "turma"  # A estrutura require ajuda a manter a responsabilidade de códigos
require_relative "pessoa" # mais otimizada, separando estruturas em arquivos diferentes
require_relative "aluno"
require_relative "professor"

aluno1 = Aluno.new("Eduardo", 18, "GR5034209")
aluno2 = Aluno.new("João", 21, "GR5025890")
aluno3 = Aluno.new("Guilherme", 23, "GR4982570")

professor = Professor.new("Rubens", 54, "História")

# O objeto comporta um array dinâmico, envolvendo diferentes complexidades de estruturas
turma = Turma.new([aluno1,aluno2,aluno3] , professor) 

turma.getTurma
puts "\n"
aluno1.apresentar
professor.apresentar