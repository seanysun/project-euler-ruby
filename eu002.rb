@first       = 0
@second      = 1
@next_num    = 0
@evens_array = []
@sum         = 0

while (@first + @second) < 4000000
  @next_num = @first + @second

  if @next_num.even?
    @evens_array << @next_num
  end

  @first  = @second
  @second = @next_num
end

@evens_array.each do |num|
  @sum += num
end

puts @sum