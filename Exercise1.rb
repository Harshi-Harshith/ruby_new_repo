def hashoccur(inputString)
    x=Hash.new(0)
    inputString.split("").each do |i|
        if i.match?(/[A-Za-z]/)
        x[i]=x[i]+1
        end
    end
    print x
end
print "Enter the input String:"
inputString = gets.chomp
hashoccur(inputString)
puts "Hello"
