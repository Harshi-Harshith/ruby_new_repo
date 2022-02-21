# frozen_string_literal: true

def fact(input)
  answer = 1
  if input <= 0
    return 'Provide proper input'
  else
    (1..input).each do |i|
      answer *= i
    end
  end

  answer
end

print 'Enter the number whose factorial you want to find: '
input = gets.chomp.to_i
puts fact(input)
