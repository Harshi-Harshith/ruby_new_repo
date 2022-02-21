# frozen_string_literal: true

class StringPalindrome
  def checkPalindrom(str)
    flag = 0
    case str.length
    when 0
      print "Please provide an input\n0 sized string is always a Palindrome"
    when 1
      print 'Input String is Palindrome'
    else
      charArray = str.split('')
      (0..((charArray.length / 2) - 1)).each do |i|
        if charArray[i] == charArray[(charArray.length - 1) - i]
          flag = 0
        else
          flag = 1
          break
        end
      end
      if flag.zero?
        print 'Input String is palindrome'
      else
        print 'Input String is not palindrome'
      end
    end
  end
end

print 'Enter the input String: '
str = gets.chomp
strPalin = StringPalindrome.new
strPalin.checkPalindrom(str)
