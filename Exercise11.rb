=begin
def pascal(lines)
    if lines<=0
        print "Number of lines must be greater than 0"
        break
    else
=end
=begin
def pascal(lines)
  for i in 1..lines
    for j in 0..lines-i
      print " "
    end
    c=1
    for k in 1..i
      print "#{c} "
      c= c * (i-k)/k
    end
    puts 
  end
end
=end

def fact(n)
  num=1
  for i in 1..n
    num*=i
  end
  return num
end

def pascal(n)
  for r in 0..n
    yield(fact(n)/(fact(r)*fact(n-r)))
  end
end

print "Number of rows you want to print in the Pascal's triangle: "
lines = gets.chomp.to_i
if lines<=0
  print "Please provide an input"
else
  for i in 0..lines
    pascal(i) { |n| print "#{n} " }
    puts
  end
end
=begin
  def sum(array)
  array.reduce(0) { |sum,num| sum+num}
end 
print sum([5, 10, 20])
# => 35
puts
puts "123"
p "123"
=end