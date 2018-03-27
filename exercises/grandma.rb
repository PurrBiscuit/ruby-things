puts "Well hello, how are you?"
response = gets.chomp
bye_count = 0

while bye_count < 2
  if response != response.upcase
    puts "HUH!? SPEAK UP, SONNY!"
    response = gets.chomp
    bye_count = 0
  elsif response == 'BYE'
      bye_count += 1
      puts "WHAT!?"
      response = gets.chomp
  else
    puts "NO, NOT SINCE " + (1930 + rand(21)).to_s + "!"
    response = gets.chomp
    bye_count = 0
  end
end

puts "OK, GOODBYE DEAR!"