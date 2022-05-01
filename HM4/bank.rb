BANK = "balance.txt"
BUFFER = "buffer.txt"

file = File.open(BANK) 
line = file.readline

def balance  # выводит все строки в фалйе
    file = File.open(BANK) 
    line = file.readline
    data = line.to_f
    file.close
    data
end
 
def deposit
    delta = gets.to_f 
    if delta > 0 
       result = delta + balance
       file = File.open(BUFFER, "w")
       file.puts(result)
       file.close

       File.write(BANK, File.read(BUFFER))
       File.delete(BUFFER) if File.exist?(BUFFER)

        #    File.write(BANK, result)
    
    else 
        puts "Введенное число должно быть положительным"
    end
    result
end

def withdraw
    delta = gets.to_f 
    if delta > 0 && balance >= delta
       result = balance - delta
       file = File.open(BUFFER, "w")
       file.puts(result)
       file.close

       File.write(BANK, File.read(BUFFER))
       File.delete(BUFFER) if File.exist?(BUFFER)
    
    else 
        puts "Введенное число должно быть положительным и меньше Вашего баланса"
    end
    result
end

loop do
    puts "выберети операцию:    D - внести средства    W - вывести средства    B - проверить баланс    Q - выйти"
    comand = gets.chomp.upcase
    break if comand == "Q" 
        case 
        
            when comand == "D"
            print "Введите сумму пополнения: "
            p deposit
            
          
            when comand == "W"
            print "Введите сумму снятия: "
            puts withdraw
        
            when comand == "B"
            print "Ваш баланс равен: "
            puts balance
                    
            else 
            puts "Выберети другую команду"
        end
 end
puts "Bye bye!"


file.close