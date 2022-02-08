print "Enter the input string: "
inputString = gets.chomp
print "Enter the string which has to be searched in the input string: "
comword = gets.chomp
wordslist = inputString.split(' ')
#print wordslist
countofthat = wordslist.count(comword)+wordslist.count(comword.capitalize)
inputString.gsub(comword,"(#{comword})")
p "#{inputString} Total Occurences = #{countofthat}"