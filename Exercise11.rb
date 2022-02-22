# frozen_string_literal: true

def fact(n)
  num = 1
  (1..n).each do |i|
    num *= i
  end
  num
end

def pascal(n)
  (0..n).each do |r|
    yield(fact(n) / (fact(r) * fact(n - r)))
  end
end

print "Upto which number you want to print in the Pascal's triangle: "
lines = gets.chomp.to_i

if lines <= 0
  print 'Please provide an input'
else
  (0..lines).each do |i|
    pascal(i) { |n| print "#{n} " }
    puts
  end
end
