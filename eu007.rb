def is_prime?(num)
  divisor = 2
  while divisor < num 
    return false if ((num % divisor) == 0)
    divisor += 1
  end
  true
end

upto   = 10001
primes = []
n = 2

until primes.size == upto
  primes << n if is_prime?(n)
  n += 1
end

p primes.last