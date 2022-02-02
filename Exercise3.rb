def fibonacci(fib)
    term1=1
    term2=1
    while term1<=fib
        yield term1
        term1,term2=term2,term1+term2
    end
end
       
print "Enter the number of fibonacci series' terms you want to print: "
fib = gets.chomp.to_i
fibonacci(fib) { |i| puts i }