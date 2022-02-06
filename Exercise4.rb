class StringPalindrome
    def checkPalindrom(str)
        
        flag=0
        if str.length==0
            print "Please provide an input\n0 sized string is always a Palindrome"
        elsif str.length==1
            print "Input String is Palindrome"
        else
            charArray = str.split('')
            for i in 0..((charArray.length/2)-1)
                if charArray[i]==charArray[(charArray.length-1)-i]
                    flag=0
                else
                    flag=1
                    break
                end
            end
            if flag==0
                print "Input String is palindrome"
            else
                print "Input String is not palindrome"
            end
        end
    end
end

print "Enter the input String: "
str = gets.chomp
strPalin = StringPalindrome.new()
strPalin.checkPalindrom(str)