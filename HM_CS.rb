print "Enter word > "

word = gets.chomp

def ends word
    if word.end_with? "CS" #заканчивается на
        2**word.length #команда на длинну слова
    else   
        word.reverse
    end
end  

puts ends word 