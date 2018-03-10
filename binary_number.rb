module BinaryNumber
  def self.to_binary(number)
    return if number == 0
    remainder = number % 2
    "#{remainder}#{self.to_binary((number / 2).floor)}"
  end
end

value = 227 # 0000 0000 1110 0011
result = BinaryNumber.to_binary(value).reverse
expected = value.to_s(2)

puts "TEST: #{result == expected ? "PASSED" : "FAILED"} - result: #{result} == expected: #{expected}"
