x       = 999999
lengths = Hash.new

until x == 1
  y   = x
  arr = []
  arr << y
  until y == 1
    if y.even?
      y = y / 2
      arr << y
    else
      y = (3 * y) + 1
      arr << y
    end
  end
  lengths[x] = arr.count
  x = x - 2    # only calculating for odd numbers, since odds have longer collatz sequences
end

puts lengths.max_by { |x, count| count }
