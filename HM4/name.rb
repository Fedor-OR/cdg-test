#Необходимо прочитать файл, затем запросив у пользователя ввод возраста, 
#найти в результатах чтения файла, студента чей возраст равен введенному
#числу и записать этого студента(тов) в другой файл с названием results.txt. После этого перезапросить ввод. 

NAME = "name.txt"
BUFFER = "buffer.txt"
RES = "results.txt"


def where(pattern) #ищет нужный текст по введеному паттерну и показывает его айди
    array =[]
    File.foreach(NAME).with_index do |name_age, index|
        if name_age.reverse.to_i.to_s.reverse.to_i == pattern
            array << index
        end
    end

    array
end

def return_string(id)
  array_string = []
  id.each do |id_s|
    File.foreach(NAME).with_index do |name_age, index|
      if id_s == index 
        array_string << name_age
      end
    end
  end 
  array_string
end 

def append(strings)
  File.write(RES, strings.join, mode: "a")
end

loop do 
  puts "Введи возраст"
  pattern = gets.to_i  
  id = where(pattern)  
  strings = return_string(id)
  append(strings)
  break if pattern == -1 # || File.foreach(NAME) == File.foreach(RES)
end