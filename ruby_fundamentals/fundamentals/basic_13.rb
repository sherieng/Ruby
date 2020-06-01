#print 1-255
# for i in 1..255
#     puts i
# end

#print odd numbers between 1-255
# for i in 1..255
#     unless i % 2 == 0
#         puts i
#     end
# end

#print sum
# sum = 0
# for i in 0..255
#     sum += i
#     puts "Number: #{i} Sum: #{sum}"
# end 

#iterating through an array
# array = [1,2,3,4,5,6]
# array.each {|i| puts i}

#find max
# array = [-3,-5,-7]
# array = [1,-2,3,-4]
# puts array.max

#get average
# array = [1,2,20,4,5,6,7]
# avg =0
# require 'active_support'
# require 'active_support/core_ext'
# avg = array.sum(0.0)/ array.length.to_f
# puts avg

#array with odd numbers
# ary= (1..255).select {|i| i%2 == 1}
# puts ary.to_s 

#greater than y
# array  = [1,3,5,7]
# y=2
# arr = array.select {|i| i>y}
# puts arr.length

#square the values
# array = [1,5,10,-2]
# arr = array.collect {|i| i*i}
# puts arr.to_s

#eliminate negative numbers
# array = [1,5,10,-2]
# for i in 0..array.length-1
#     if array[i] < 0
#         array[i] = 0
#     end
# end 
# puts array

#max, min and average
# array = [1,5,10,-2]
# puts "The maximum number is " + array.max.to_s
# puts "The minimum number is " + array.min.to_s
# avg =0
# require 'active_support'
# require 'active_support/core_ext'
# avg = array.sum(0.0)/ array.length.to_f
# puts "The average is " + avg.to_s

#shifting the values in the array
# array = [4,3,3,3,5,10,-2,1,3]
# x = array.shift
# array.push(x)
# puts array.to_s

#number to string 
# array = [-1, -3, 2]
# for i in 0..array.length-1
#     if array[i] < 0
#         array[i] = "Dojo"
#     end
# end
# puts array.to_s
    