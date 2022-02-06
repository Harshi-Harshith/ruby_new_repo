def fact(input)
    answer = 1
    if input<=0
        return "Provide proper input"
    else
        for i in 1..input
            answer = answer*i
        end
    end
    return answer
end

print "Enter the number whose factorial you want to find: "
input = gets.chomp.to_i
puts fact(input)