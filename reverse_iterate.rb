# frozen_string_literal: true

def reverse_Iterate(array)
  if array.length < 2
    array
  else
    n = array.length
    reverse_Iterate(array[(n / 2)..(n - 1)]) + reverse_Iterate(array[0..((n / 2) - 1)])
  end
end
arr = []
# print "Enter the length of array: "
len = gets.chomp.to_i
while len.positive?
  # print "Enter the element: "
  arr << gets.chomp.to_i
  len -= 1
end

if arr.length.zero?
  print 'Please provide an input'
else
  arr = reverse_Iterate(arr)
  arr.each do |i|
    print "#{i} "
  end
end

# print "#{reverse(arr)}"
# arr = arr.reverse_Iterate{ |i| print "#{i} "}
