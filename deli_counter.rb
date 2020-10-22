def line(line_array)
  if line_array.length.zero?
    puts 'The line is currently empty.'
  else
    line_array_copy = line_array
    line_array_copy = line_array_copy.collect do |name|
      line_array_copy[line_array_copy.index(name)] = (line_array_copy.index(name) + 1).to_s + ". #{name}"
    end
    puts 'The line is currently: ' + line_array_copy.join(' ')
  end
end

def take_a_number(line_array, name)
  line_array.push(name)
  puts "Welcome, #{name}. You are number #{line_array.index(name) + 1} in line."
end

def now_serving(line_array)
  if line_array.length.zero?
    puts 'There is nobody waiting to be served!'
  else
    puts "Currently serving #{line_array.shift}."
  end
end
