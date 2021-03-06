a = [3, 4, 6, 10, 11, 15]
b = [1, 5, 8, 12, 14, 19]

# plan is to create a pipeline and solve using recursion
# going to crunch through each array, testing at each iteration to see
# which value at index 0 of either array is lower, removing that from the array
# and appending that value to the result array.
#
# Finally, check to see if either array is empty
# If so, just going to append the remaining array to the end of the result

def merge_arrays(a, b)

  result = []

  if a[0] < b[0]
    result << a.shift
  else
    result << b.shift
  end

  if a.length == 0
    result = result + b
  elsif b.length == 0
    result = result + a
  else
    result = result + merge_arrays(a, b)
  end

end

p merge_arrays(a, b)
# prints [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]
