def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == "yes" || reply == "no"
      if reply == "yes"
        return true
      else
        return false
      end
    else
      puts "please answer yes or no"
    end
  end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
answer = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts answer