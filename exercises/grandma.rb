puts "Well hello, how are you?"
bye_count = 0

while true
  response = gets.chomp

  if response == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end

  if bye_count > 2
    break
  end

  if response != response.upcase
    puts "HUH!? SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE " + (1930 + rand(21)).to_s + "!"
  end
end

puts "OK, GOODBYE DEAR!"