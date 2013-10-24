# long run time -- need to implement sieve to check for primes more quickly

class Integer 
 
  def is_prime?
    divisor = 2
    while divisor < self 
      return false if ((self % divisor) == 0)
      divisor += 1
    end
    true
  end

  # method to determine number of factors
  def count_divisors
    num         = self
    div         = 2
    div_array   = []
    count_array = []
    until num.is_prime?
      if (num % div) == 0
        num = num / div
        if div.is_prime?
          div_array << div 
        else
          div.count_divisors
        end
        div = 2
      else
        div += 1
      end
    end
    div_array << num
    # calculate total number of factors based on prime factors
    # number of factors == (a + 1) * (b + 1) * ... (n + 1)
    # where a, b...n are the count for each unique prime factor
    div_array.map do |x|
      count = div_array.count(x)
      count_array << count
      div_array = div_array.drop(count)
    end
    count_array.delete(0)
    number_of_divisors = count_array.reduce(1) do |product, y|
      product * (y + 1)
    end
  end
end

increment     = 1
next_tri      = 0

while next_tri.count_divisors < 500
  next_tri += increment
  increment += 1
end

puts next_tri