# frozen_string_literal: true

class String
  def checkPalindrome?(str)
    case str.length
    when 0
      print "Please provide an input\n0 sized string is always a Palindrome"
    else
      self.reverse == self
    end
  end
end


print 'Enter the input String: '
str = gets.chomp
if str.checkPalindrome?(str).to_s == 'true'
  p 'Input is a Palindrome'
else
  p 'Input is not a Palindrome'
end