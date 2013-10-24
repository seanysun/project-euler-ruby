threes = 3
fives  = 5
@multiples_array = []

while threes < 1000
  @multiples_array << threes
  threes += 3
end

while fives < 1000
  @multiples_array << fives
  fives += 5
end

@multiples_array = @multiples_array.uniq
@multiples_array = @multiples_array.reduce(:+)
puts @multiples_array