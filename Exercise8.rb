# frozen_string_literal: true

def power(inputArray, pow)
  outputArray = []
  inputArray.each do |i|
    # raised = 1
    # for j in 1..pow
    #    raised = raised * i
    # end
    raised = i**pow
    outputArray << raised
  end
  print outputArray
end

print 'Enter the number of elements you want in the array: '
size = gets.chomp.to_i
inputArray = []
while size.positive?
  print "\nEnter element to be added to the array: "
  inputArray << gets.chomp.to_i
  size -= 1
end
print "\nEnter the power to which every number in the array should be raised to: "
pow = gets.chomp.to_i
print "\nInput Array is: #{inputArray}"
print "\nOutput Array is: "
power(inputArray, pow)
