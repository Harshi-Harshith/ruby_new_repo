class FactorialProgram
    attr_accessor :input

    def initialize(inputnum)
        @input = inputnum
        @answer = 1
        @answer = fact(@input)
    end

    def fact(k)
        @temp = 1
        if k==0
            return 1
        elsif k>0
            for i in 1..k
                @temp = @temp*i
            end
        end
        return @temp
    end

    def to_s
        if @input<0
            raise NegativeInput, "Negative number entered"
        else
            "#{@answer}"
        end
    end
    
end

class NegativeInput < StandardError
end

print "Enter the number whose factorial you want to find: "
#input1 = gets.chomp.to_i
#puts "#{input1.fact}"
num = gets.chomp.to_i
input1 = FactorialProgram.new(num)
puts input1