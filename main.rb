def bubble_sort(array)
  x = array.length
  y = array.max + 1
  sorted_array = []

  for i in 1..x
    array.each_with_index do |num, index|
      if index == 0
        if num < array[index + 1]
          sorted_array.push(num, array[index + 1])
        else
          sorted_array.push(array[index + 1], num)
        end
      elsif index != 1
        if num < sorted_array[index - 1]
          sorted_array.insert(index - 1, num)
        else
          sorted_array.push(num)
        end
      else
      end
    end
    array = sorted_array
    if i < x
      sorted_array = []
    end
  end
  sorted_array
end