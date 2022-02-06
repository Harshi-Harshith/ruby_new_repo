print "Provide the string to be reversed: "
inputString = gets.chomp
if inputString.length < 1
    print "Please provide an input"
else
    puts inputString.split.reverse.join(" ")
end