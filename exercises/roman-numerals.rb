def roman_numerals(num)
  result = ""

  while num > 0
    if num >= 1000
      result += "M"
      num -= 1000
    elsif num >= 500
      result += "D"
      num -= 500
    elsif num >= 100
      result += "C"
      num -= 100
    elsif num >= 50
      result += "L"
      num -= 50
    elsif num >= 10
      result += "X"
      num -= 10
    elsif num >= 5
      result += "V"
      num -= 5
    elsif num >= 1
      result += "I"
      num -= 1
    end
  end

  return result
end

puts roman_numerals(9)
puts roman_numerals(224)
puts roman_numerals(1346)