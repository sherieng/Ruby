#1
array = [3,5,1,2,7,9,8,13,25,32]
require 'active_support'
require 'active_support/core_ext'
puts array.sum
y=10
arr = array.select {|i| i>y}
puts arr.to_s

#2
arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts arr.shuffle.to_s
array = arr.find_all {|i| i.size > 5}
puts array.to_s

#3
array = ('a'..'z').to_a.shuffle
puts array.to_s
puts array.last
if array.first =~ /[aeiou]/
    puts "The first letter is a vowel"
elsif 
    puts array.first
end

# 4 & #5
ary = (55..100).to_a
array= ary.sample(10)
puts array.sort.to_s
puts "The maximum number is " + array.max.to_s
puts "The minimum number is " + array.min.to_s

#6
string = []
(1..5).each {|i| string.push((65 + rand(26)).chr)}
puts string.join

#7
array = []
for i in 0..9
    string = []
    word = (1..5).each {|i| string.push((65 + rand(26)).chr)}
    array.push(string.join)
end 
puts array.to_s