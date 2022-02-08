# frozen_string_literal: true

def check_Prime(n)
  i = 2
  arr = []
  while i <= n
    is_prime = true
    if is_prime
      i.times do |n|
        is_prime = false if (n > 1) && (i % n).zero? && (n != i)
      end
    end
    arr.push(i) if is_prime
    i += 1
  end
  p arr
end

print 'Enter the number upto which you want to print the prime numbers: '
input = gets.chomp.to_i
check_Prime(input)