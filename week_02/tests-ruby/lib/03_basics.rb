def who_is_bigger(a, b, c)
    x = ""
    if a == nil || b == nil || c == nil
        return "nil detected"
    else
        if a == [a, b, c].max
            return "a is bigger"
        elsif b == [a, b, c].max
            return "b is bigger"
        else
            return "c is bigger"
        end
    end  
end

def reverse_upcase_noLTA(string)
    return string.upcase.reverse.delete "LTA"
end

def array_42(array)
    return array.include? 42
end

def magic_array(a)
    return a.flatten.sort.map{ |x| x * 2}.delete_if{ |x| x%3 == 0}.uniq
end