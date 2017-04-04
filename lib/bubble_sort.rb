# Bubble sort

def bubble_sort(array_to_sort)

  counter = array_to_sort.length - 1

  loop do
    swap = false
    (0..counter-1).each do |i|
      if(array_to_sort[i] > array_to_sort[i+1])
        # temp = array_to_sort[i] 
        array_to_sort[i], array_to_sort[i+1] = array_to_sort[i+1], array_to_sort[i]
        swap = true
         # = temp
      end
    end
    break if not swap
  end
  array_to_sort
end


# bubble_sort([1, 3, 7, 2, 5])
#  bubble_sort([1, 3, 7, 7, 2, 5])
#  bubble_sort([1, 3, 7, 2, 2, 5])
#  bubble_sort([1, -3, 7, 2, -2, -5, 10])