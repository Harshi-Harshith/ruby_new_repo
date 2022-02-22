# frozen_string_literal: true

print 'Provide the string to be reversed: '
inputString = gets.chomp

if inputString.empty?
  print 'Please provide an input'
else
  puts inputString.split.reverse.join(' ')
end
