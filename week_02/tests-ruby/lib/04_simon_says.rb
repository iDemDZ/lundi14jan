def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, int=2)
    return ( "#{str} " * int).strip
end

def start_of_word(str, int)
    result = ""
    for i in 0 ... int
        result += str[i]
    end
    return result
end

def first_word(str)
    return str.partition(" ").first
end

def titleize(str)
    littleWords = ["and", "the"]
    str.capitalize.gsub(/(\w+)/) { |x| littleWords.include?(x) ? x : x.capitalize}
end