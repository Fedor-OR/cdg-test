file = File.open("auto.txt") #открывает введеный файл
lines = file.readlines #переводит содержание файла в строки

def index (lines) # выводит все строки в фалйе
    data = lines.map { |line| puts line.chomp }
end

index (lines)

puts "=" * 12

def id (lines) #при вводе индекса показывает содержание строки
    print "Введи число:"
    index = gets.to_i - 1

    puts lines[index]
end

id(lines)

puts "=" * 12

def where(pattern) #ищет нужный текст по введеному паттерну и показывает его айди
    all_auto =[]
    File.foreach("auto.txt").with_index do |name_auto, index|
        @auto_id = index if name_auto.include?(pattern)
        all_auto << @auto_id
    
    end
    
    #@auto_id
    all_auto
end

puts "Введи марку"
pattern = gets.chomp  
puts where(pattern)  

puts "=" * 12

BUFFER = "buffer.txt"

def update(id, name) #обновить(изменить) содерание файла
    file_1 = File.open(BUFFER, 'w')
    File.foreach("auto.txt").with_index do |line, index|
      file_1.puts(id == index ? name : line)
    end
  
    file_1.close
    File.write("auto.txt", File.read(BUFFER))
  
    File.delete(BUFFER) if File.exist?(BUFFER)
  end

update(10, "Waffel")


puts "=" * 12

#puts "Line 4: #{lines[3]}"

file.close

puts "=" * 12

BUFFER = "buffer.txt"
LIST = "auto.txt"

def delete(id) #удалить строку в файле

  file = File.open(BUFFER, 'w') 
  File.foreach(LIST).with_index do |line, index|
    if id != index
      file.puts (line)
    end
  end

  file.close
  File.write(LIST, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

delete(11) 