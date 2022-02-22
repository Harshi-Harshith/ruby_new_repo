# frozen_string_literal: true

lowercase = 0
uppercase = 0
numerical = 0
special = 0
print 'Enter the input String: '
inputString = gets.chomp
inputString.each_char do |letter|
  if ('a'..'z').include? letter
    lowercase += 1
  elsif ('A'..'z').include? letter
    uppercase += 1
  elsif letter == ' '
    special += 1
  elsif letter.to_i.to_s == letter
    numerical += 1
  else
    special += 1
  end
end
print "Lowercase characters: #{lowercase}\nUppercase characters: #{uppercase}\nNumerical characters: #{numerical}\nSpecial characters: #{special}"
