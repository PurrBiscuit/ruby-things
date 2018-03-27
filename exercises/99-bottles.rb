bottles = 99

while bottles > 2
  puts bottles.to_s + " bottles of beer on the wall"
  bottles -= 1
  puts "take one down, pass it around. " + bottles.to_s + " bottles of beer on the wall"
end

puts "2 bottles of beer on the wall"
puts "take one down, pass it around. 1 bottle of beer on the wall"
puts "1 bottle of beer on the wall"
puts "take one down, pass it around.  no more bottles of beer on the wall"