#puts "That\'s it"
#puts 'Printing backslash "\\". This is how we print backslash'

print "Enter the input String: "
inputString = gets.chomp
array = []
inputString.split(" ").each do |i|
    array << i
end

output = Hash.new

array.inject(output) { |h,p|  h[p.length] ||= []; h[p.length] << p;h }

p output.sort.to_h
#Yet to Complete