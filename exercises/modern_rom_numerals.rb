def modern_roman_numerals(num)
  result = ""

  result = result + "M" * (num/1000)
  result = result + "D" * ((num % 1000)/500)
  result = result + "C" * ((num % 500)/100)
  result = result + "L" * ((num % 100)/50)
  result = result + "X" * ((num % 50)/10)
  result = result + "V" * ((num % 10)/5)
  result = result + "I" * (num % 5)

  return result.reverse
end

puts modern_roman_numerals(126)
puts modern_roman_numerals(256)
puts modern_roman_numerals(2867)