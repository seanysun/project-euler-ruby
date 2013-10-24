def divisible?(num)
  @divisors.each do |div|
    return false if (@x % div) != 0
  end
  true
end

@finished = false
@x        = 380    # 19 * 20
@divisors = [11, 12, 13, 14, 15, 16, 17, 18]    # no need to check for 1..10, 19, 20

while divisible?(@x) == false
  @x += 380
end

puts @x