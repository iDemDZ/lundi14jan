def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(array)
    resultat = 0
    for i in array do
        resultat += i
    end
    return resultat
end

def multiply(a, b)
    return a * b
end

def power(a, b)
    return a ** b
end

def factorial(a)
    if a == 0
        return 1
    else
        return   a * factorial(a - 1)
    end
end