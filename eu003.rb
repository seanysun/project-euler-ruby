class Integer

  def divisible_by?(divisor)
    if (self % divisor) == 0
      true
    else
      false
    end
  end

  def is_prime?
    prime_check_divisor = 2
    
    while prime_check_divisor < (self / 2)
      if self.divisible_by?(prime_check_divisor)
        return false
      end
      if prime_check_divisor > 2
        prime_check_divisor += 2    # increments by 2 b/c all evens > 2 are not prime
      else
        prime_check_divisor += 1
      end
    end
    true
  end
end


@factors_found = false
@x             = 600851475143
@divisor       = 3
@primes_array  = []


while @factors_found == false

  if @x.divisible_by?(@divisor) && @divisor.is_prime?
    @primes_array << @divisor
  end

  @divisor = @divisor + 2    # increments by 2 b/c all evens > 2 are not prime

  if @primes_array.reduce(:*) == @x
    @factors_found = true
  end
end

p @primes_array.last