puts "Olá usuário! Qual é seu peso?"
peso = gets.chomp.to_f
puts "E qual é sua altura"
altura = gets.chomp.to_f

imc = (peso / (altura * altura)).round(2)

classificacao = "";

case imc
when 0...18.5
    classificacao = "Abaixo do peso"
when 18.5..24.9
    classificacao = "Peso normal"
when 25.0..29.9
    classificacao = "Sobrepeso"
when 30..34.9
    classificacao = "Obesidade"
when 35...39.9
    classificacao = "Obesidade Grave"
else
    classificacao = "Obesidade Mórbida"
end

puts "Seu IMC é: #{imc}!" # ex -> Peso: 85 | Altura: 1.82 | output -> imc: 85 / (1.82)² = 25.66
puts "Sua classificação é: #{classificacao}" # output: Sobrepeso