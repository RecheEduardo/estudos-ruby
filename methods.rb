def revString string
    return "" if string.length == 0
    return string if string.length == 1

    tam = string.length

    string[tam - 1] + revString(string.slice(0...-1))
end

puts revString "teste reverso" # output: osrever etset

def sortArray array
    i = 0
    while(i < array.length - 1) do
        if(array[i] > array[i+1])
            temp = array[i]
            array[i] = array[i+1]
            array[i+1] = temp
            i = 0
        end
        i += 1
    end

    array
end

print sortArray [1,254,24,13,734,14,21,5,2,35,15] # output: [1, 2, 5, 13, 14, 15, 21, 24, 35, 254, 734]