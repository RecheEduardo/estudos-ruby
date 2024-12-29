# As hash nada mais são que uma estrutura de dados chave-valor | key-value
# bem semelhante ao dicionário em Phyton e Objeto Javascript, mas podendo
# assumir um comportamento dinâmico, como atributos de funções e implementação
# dinâmica de novas hashes.

hash1 = {nome: "Eduardo",  idade: 18}
hash1[:email] = "Eduardo@gmail.com" # declarar novo falor pra hash

hash2 = {endereco_email: hash1[:email], idade: hash1[:idade], cidade: "São Paulo" } # criar novas hashes utilizando antigas

puts ""
puts hash1
puts hash1.values
puts ""

puts hash2
puts hash2.values
puts ""

puts hash1.has_key?("cidade") # retorna false, pois não existe a chave cidade no hash1 (apenas no 2)
puts ""
puts hash1.has_value?("Eduardo") # retorna true, pois foi declarado o nome Eduardo
puts ""

hash_array = [hash1, {nome: "João", idade: "35", email: "Joao@gmail.com"}] # array de hashes

i = 0

while i < hash_array.length do # loop que percorre todos os elementos do array e imprime seus valores
    puts hash_array[i].values
    puts ""
    i += 1    
end