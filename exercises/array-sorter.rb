puts "Enter your words now"
words = []

while 
  word = gets.chomp
  if word == ""
    break
  else
    words.push(word)
  end
end

puts words.sort