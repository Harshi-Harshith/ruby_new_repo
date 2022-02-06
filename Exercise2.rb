puts "Enter your input: "
inputstring = gets
inputstring = inputstring.gsub(/a|e|i|o|u|A|E|I|O|U/,'*')
print inputstring