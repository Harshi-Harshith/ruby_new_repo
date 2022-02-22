print "Enter the input String: "
inputString = gets.chomp
array = inputString.split(" ")

output=Hash.new
array.inject(output) { |h,p| h[p.length] ||=[]; h[p.length]<<p; h }

finalOutput = Hash.new

output.each do |key, value|
    if key%2==0
        finalOutput['even'] ||= []
        finalOutput['even'].push(value)
    else
        finalOutput['odd'] ||=[]
        finalOutput['odd'].push(value)
    end
end

puts finalOutput
