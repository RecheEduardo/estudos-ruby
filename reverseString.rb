def revString(string)
    return "" if string.length == 0
    return string if string.length == 1

    tam = string.length

    return string[tam - 1] + revString(string.slice(0...-1))
end

print revString("teste reverso")