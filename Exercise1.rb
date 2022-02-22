# frozen_string_literal: true

def hashoccur(inputString)
  # x = Hash.new(0)
  # inputString.split('').each do |i|
  #  x[i] = x[i] + 1
  # end
  # print x
  inputString.split('').group_by { |c| c }.transform_values(&:count)
end

print 'Enter the input String:'
inputString = gets.chomp
p hashoccur(inputString)
