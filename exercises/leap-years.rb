puts "Enter a Starting Year:"
start_year = gets.chomp.to_i

puts "Enter an Ending Year:"
end_year = gets.chomp.to_i

puts ""
puts "leap years are:"

while start_year <= end_year
  if (start_year % 4 == 0 && start_year % 100 != 0) || start_year % 400 == 0
    puts start_year
  end
  start_year += 1
end