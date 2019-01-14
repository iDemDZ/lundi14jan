def translate(str)
    voyelles = ["a", "e", "i", "o", "u", "y"]
    mots = str.split(' ')
    resultat = []
    for mot in mots do
        if voyelles.include? (mot[0])       #Si 1ere lettre est une voyelle
            resultat.push ("#{mot}ay")
        else                                #Si 1ere lettre esr une consonne et:
            if mot[0] == "q" && mot[1] == "u"   # la 1ere lettre est un q et la 2eme un u
                l2 = mot.slice!(/^../)
                resultat.push "#{mot}#{l2}ay"
            elsif voyelles.include? (mot[1])   #Si 1ere lettre est une consonne et la 2eme lettre est une voyelle
                l1 = mot.slice!(/^./)
                resultat.push "#{mot}#{l1}ay"
            else                            #Si 1ere lettre est  une consonne et 2eme lettre est aussi une consonne et :
                if mot[1] == "q" && mot [2] == "u"  #la 2e lettre est un q et la 3eme un u
                    l3 = mot.slice!(/^.../)
                    resultat.push "#{mot}#{l3}ay"
                elsif voyelles.include? (mot[2])   #Les 2 premieres lettres onst des consonnes et 3eme lettre est une voyelle
                    l2 = mot.slice!(/^../)
                    resultat.push "#{mot}#{l2}ay"      
                else                            #la 3eme lettre est une consonne
                    l3 = mot.slice!(/^.../)
                    resultat.push "#{mot}#{l3}ay"
                end
            end 
        end
    end
    return resultat.join " "
end











