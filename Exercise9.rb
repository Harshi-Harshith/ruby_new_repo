# frozen_string_literal: true

# puts "That\'s it"
# puts 'Printing backslash "\\". This is how we print backslash'

print 'Enter the input String: '
inputString = gets.chomp
array = inputString.split(' ')

output = {}

array.each_with_object(output) do |p, h|
  h[p.length] ||= []
  h[p.length] << p
end

p output.sort.to_h