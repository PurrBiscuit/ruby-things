def shuffle some_array
  shuffled = []

  while some_array.length > 0
    rand_index = rand(some_array.length)
    new_arr = []

    current_index = 0
    while current_index < some_array.length
      if rand_index == current_index
        shuffled.push(some_array[current_index])
      else
        new_arr.push(some_array[current_index])
      end
      current_index += 1
    end


    some_array = new_arr
  end

  return shuffled
end

puts shuffle([1,2,3,4,5,6,7,8,9,10])