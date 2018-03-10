module Fibonacci
  # 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + ...
  def self.compute(n)
    if n == 1
      1
    elsif n == 2
      1
    else
      compute(n-1) + compute(n-2)
    end
  end
end

# this range represents the index within
# the fibonacci sequence
(1..21).each do |num|
  puts Fibonacci.compute(num)
end
