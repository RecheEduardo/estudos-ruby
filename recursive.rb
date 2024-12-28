puts "Olá usuário! Digite um número:"
num = gets.chomp.to_i

# Recursividade de funções em Ruby:
def mult(n , i)
    return 0 if i == 0
    return n if i == 1

    return n + mult(n, i - 1)
end
puts "A multiplicação desse número por 7 resulta em: #{mult(num,7)}"

def power(num, exp)
    return 1 if exp == 0
    return num if exp == 1

    # chamada recursiva de outra função dentro da potência
    return mult(num, power(num, exp - 1)) 
end
puts "O número digitado, se elevado ao quadrado, resulta em: #{power(num,2)}"

def fact(n)
    return 0 if n == 0
    return 1 if n == 1

    return n * fact(n-1)
end
puts "E o fatorial desse número resulta em: #{fact(num)}"


