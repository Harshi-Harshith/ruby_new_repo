def reverseIterate(array)
    if array.length()<2
        return array
    else
        n=array.length()
        return reverseIterate(array[(n/2) .. (n-1)]) + reverseIterate(array[0 .. ((n/2)-1)])
    end
end
arr = []
#print "Enter the length of array: "
len=gets.chomp.to_i
while len>0
    #print "Enter the element: "
    arr << gets.chomp.to_i
    len-=1
end

if arr.length()==0
    print "Please provide an input"
else
    #arr = reverseIterate(arr)
    #arr.each do |i|
    #    print "#{i} "
    #end
end

#print "#{reverse(arr)}"
#arr = arr.reverseIterate{ |i| print "#{i} "}