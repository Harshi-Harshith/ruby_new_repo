print "Enter the input string: "
inputString = gets.chomp
print "Enter the string which has to be searched in the input string: "
comword = gets.chomp
comcap = comword.capitalize
comfullcap = comword.upcase
inputString = inputString.gsub(/#{comword}/, "(#{comword})")
inputString = inputString.gsub(/#{comcap}/, "(#{comcap})")
inputString = inputString.gsub(/#{comfullcap}/, "(#{comfullcap})")
puts "#{inputString} Total Occurences found: #{inputString.count('(')}"