def revString(string)
    return "" if string.length == 0
    return string if string.length == 1

    tam = string.length

    return string[tam - 1] + revString(string.slice(0...-1))
end

puts revString("teste reverso")

def sortArray(array)
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

    return array
end

print sortArray(["a" , "z" , "Z" , "A"])