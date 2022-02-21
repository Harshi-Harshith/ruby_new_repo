# frozen_string_literal: true

print 'Enter the input String: '
inputString = gets.chomp
array = []
inputString.split(' ').each do |i|
  array << i
end

output = {}
array.each_with_object(output) do |p, h|
  h[p.length] ||= []
  h[p.length] << p
end

finalOutput = {}

output.each do |key, value|
  if key.even?
    finalOutput['even'] ||= []
    finalOutput['even'].push(value)
  else
    finalOutput['odd'] ||= []
    finalOutput['odd'].push(value)
  end
end

puts finalOutput
