=begin
def pascal(lines)
    if lines<=0
        print "Number of lines must be greater than 0"
        break
    else


=end

print "Number of rows you want to print in the Pascal's triangle: "
lines = gets.chomp.to_i
pascal(lines) {|row| puts "#{row} "}
=end
=begin
def pascal(n)
    raise ArgumentError, "must be positive" if n < 1
    yield ar = [1]
    (n-1).times do
      ar.unshift(0).push(0) 
      yield ar = ar.each_cons(2).map(&:sum)
    end
  end
  puts "provide input"
  line=gets.chomp.to_i
  pascal(line){|row| puts row.join("").center(0)}.
=end

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