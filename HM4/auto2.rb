BUFFER = "buffer.txt"
LIST = "auto.txt"

def delete(id)

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