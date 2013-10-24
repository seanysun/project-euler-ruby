@array          = []
@sum_of_squares = 0
@square_of_sums = 0

for a in 1..100
  @array << a
end

@array.each do |num|
  @sum_of_squares += (num ** 2)
end

@square_of_sums = ((@array.reduce(:+) ** 2))

puts (@square_of_sums - @sum_of_squares)