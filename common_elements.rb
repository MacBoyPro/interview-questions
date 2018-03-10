def common_elements
  array_1 = [30, 25, 20, 15, 10, 5]
  array_2 = [30, 26, 21, 20, 19, 10]

  final_array = array_1 & array_2

  puts "[#{final_array.join(', ')}]"
end

common_elements
