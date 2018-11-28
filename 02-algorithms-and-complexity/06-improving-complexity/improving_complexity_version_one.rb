# Improves code optimization looping through the input array only once
# and improves space complexity by using only 1 array instead of 2 for 
# sorting.  Because this loops through the sorted array N-times for each 
# input element of (n) items, it has a performance of Big-O(n^2)
def insertion_sort(*arrays)
    sorted_array = []
    arrays.flatten.each do |value|
      l = sorted_array.length
      if l == 0
        sorted_array << value
      else
        i = 0
        while i < l
          arr_val = sorted_array[i]
          if arr_val > value
            sorted_array.insert(i, value)
            break
          elsif i == l-1
            sorted_array << value
            break
          end
          i += 1
        end
      end
    end
  
    # Return the sorted array
    sorted_array
  end