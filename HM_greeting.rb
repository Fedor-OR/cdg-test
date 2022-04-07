def greeting(age)
    if age >= 18
        "самое время заняться делом!"
    else
        "Тебе меньше 18 лет, но начать учиться программировать никогда не рано."       
    end 
end

puts "Enter you name"
name = gets.chomp
puts "enter you surname"
surname = gets.chomp
puts "enter you age"
age = gets.to_i
print "Привет, #{name} #{surname}."
puts greeting(age)
