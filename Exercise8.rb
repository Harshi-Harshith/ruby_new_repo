# frozen_string_literal: true

def power(inputArray, raise)
  outputArray = []
  inputArray.each do |i|
    raised = 1
    (1..raise).each do |_j|
      raised *= i
    end
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
print "\nEnter the power to which every number in the array should be raise to: "
raise = gets.chomp.to_i
print "\n Input Array is: #{inputArray}"
print "\n Output Array is: "
power(inputArray, raise)
