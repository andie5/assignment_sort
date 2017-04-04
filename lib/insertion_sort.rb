# Insertion sort


def insertion_sort(array_to_sort)

  counter = array_to_sort.length - 2
   (0..counter).each do |num|
    value = array_to_sort[num+1]
      insert(array_to_sort, num, value)
    end
    array_to_sort
end

# It finds the last sorted element smaller than it, then places itself one index higher + then it proceeds through the rest of the array and swaps everything to the right by one + (Yes, it overwrites one element just to the right of your sorted section.

def insert(arr, right_index, value)
    # value is the value to insert
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements

    i = right_index
    while(i >= 0 && arr[i] > value)
        # copy the element
        arr[i+1] = arr[i]
        i -= 1
    end

    # insert the actual element
    arr[i+1] = value;
end

# insertion_sort([1, 3, 7, 2, 5])
#  insertion_sort([1, 3, 7, 7, 2, 5])
#  insertion_sort([1, 3, 7, 2, 2, 5])
#  insertion_sort([1, -3, 7, 2, -2, -5, 10])