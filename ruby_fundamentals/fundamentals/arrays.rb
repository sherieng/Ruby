a = [1,2,3,4,5]
b = ["a","b", "f","c","d","e"]

puts a.at(0)
puts "***********"
puts a.at(-1)
puts "***********"
puts b.delete("b"), b
puts "***********"
puts a.delete(3), a
puts "***********"
puts a.reverse 
puts "***********"
puts a.length
puts "***********"
puts b.sort
puts "***********"
puts b.slice!(2), b
puts "***********"
puts a.shuffle!
puts "***********"
puts a.join
puts "***********"
puts b.insert(2,"f")
puts "***********"
puts b.values_at(2..3)


