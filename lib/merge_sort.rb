# Merge recursive sort

def merge_sort(array_to_sort)
  len = array_to_sort.length
  # // if the array is one element long, just return it
  if(len == 1)
    return array_to_sort
  else
    middle = (len/2)

    left = merge_sort(array_to_sort[0..middle-1])

    right = merge_sort(array_to_sort[middle..-1])

    merge(left,right)
  end
 end

def merge(left_arr, right_arr)

    new_arr = []

    until left_arr.length == 0 || right_arr.length == 0 do

      # compare left_arr[0] and right_arr[0]
     # whichever is smaller, push it onto new_arr
      if(left_arr[0] < right_arr[0]) 
        new_arr << left_arr[0]
        left_arr.shift
      else
        new_arr << right_arr[0]
        right_arr.shift
      end
    end

    # repeat the process, but don't reuse elements,
    # // until you have pushed all the elements from
    # // left_arr and right_arr onto new_arr in sorted order


    new_arr += left_arr + right_arr

    #  if left_arr.length == 0 
    #   new_arr += right_arr
    # else
    #   new_arr += left_arr
    # end

    new_arr
end


# merge_sort([1, 3, 7, 2, 5])
#  merge_sort([1, 3, 7, 7, 2, 5])
#  merge_sort([1, 3, 7, 2, 2, 5])
#  merge_sort([1, -3, 7, 2, -2, -5, 10])