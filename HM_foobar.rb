def foobar(array)
    if array.include?(20)
        array[1]
    else
        array.sum
    end
    
end

puts "Enter two numbers:"
array = [gets.to_i,gets.to_i]
puts foobar(array)
