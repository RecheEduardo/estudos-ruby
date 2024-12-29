class ContaBancaria
    attr_reader :saldo, :titular

    def initialize(saldo ,titular)
        @saldo = saldo
        @titular = titular
    end

    def depositar(valor)
        if valor > 0
            @saldo += valor
            puts "\n\tO valor de R$#{valor} foi depositado com sucesso!"
        else
            puts "\n\tO valor depositado deve ser positivo"
        end
    end

    def sacar(valor)
        if valor > 0
            if saldoSuficiente(valor) # utiliza do método privado para 
                @saldo -= valor       # verificar se existe saldo na conta
                puts "\n\tO valor de R$#{valor} foi sacado com sucesso!"
            else
                puts "\n\tValor indisponível para saque"
            end
        else
            puts "\n\tO valor sacado deve ser positivo"
        end
    end

    def verConta
        puts "\n\tNOME DO TITULAR: #{self.titular}"
        puts "\n\tSALDO DISPONÍVEL: R$#{self.saldo.round(2)}"
    end

    # Função privada encapsulada dentro do objeto, mantendo sua lógica 
    # APENAS dentro da classe e tornando-a inacessível na execução do programa.
    private 
    def saldoSuficiente(valor)
        @saldo >= valor
    end
end

# O sistema de banco abaixo coleta dados do cliente e cria um novo cliente
puts ""
puts "\t========== SISTEMA BANCÁRIO ==========\n"
print "\n\tDigite seu nome: "
nome = gets.chomp.to_s
print "\n\t======================================\n"
print "\n\tBem vindo, #{nome}! Agora digite o seu saldo: "
saldo = gets.chomp.to_f

cliente = ContaBancaria.new(saldo, nome)

begin # As transações dentro da conta acontecem de forma sucessiva dentro da sessão begin-end-while
    print "\n\t======================================\n"
    puts "\n\tMENU DE OPÇÕES"
    puts "\n\t1 - DEPOSITAR VALOR"
    puts "\n\t2 - SACAR VALOR"
    puts "\n\t3 - VISUALIZAR SALDO"
    puts "\n\t4 - FECHAR PROGRAMA"
    print "\n\tEscolha uma opção: "

    opcao = gets.to_i

    case opcao
        when 1
        print "\n\t======================================\n"
        puts "\n\tDEPOSITAR VALOR\n\n"
        print "\n\tDigite o valor que deseja depositar: "
        valor = gets.chomp.to_f
        cliente.depositar(valor)

        when 2
        print "\n\t======================================\n"
        puts "\n\tSACAR VALOR\n\n"
        print "\n\tDigite o valor que deseja sacar: "
        valor = gets.chomp.to_f
        cliente.sacar(valor)

        when 3
        print "\n\t======================================\n"
        puts "\n\tVISUALIZAR SALDO\n\n"
        cliente.verConta

        when 4
        puts "\n\tFechando programa..."

        else
        puts "\n\tOpção Inválida!"
    end
end while opcao != 4