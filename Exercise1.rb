# frozen_string_literal: true

def hashoccur(inputString)
  x = Hash.new(0)
  inputString.split('').each do |i|
    x[i] = x[i] + 1 if i.match?(/[A-Za-z]/)
  end
  print x
end
print 'Enter the input String:'
inputString = gets.chomp
hashoccur(inputString)
puts 'Hello'
