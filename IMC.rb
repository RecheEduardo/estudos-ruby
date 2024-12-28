puts "Olá usuário! Qual é seu peso?"
peso = gets.chomp.to_i
puts "E qual é sua altura"
altura = gets.chomp.to_f

imc = peso / (altura * altura)


print "Seu IMC é: #{imc.to_f.round(2)}!\n"