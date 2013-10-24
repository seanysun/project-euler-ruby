m = []
n = []

m = (2..600).each {|element| m << element}

m.each do |m|
  n << (m - 1)
  n.each do |n|
    a = (m ** 2) - (n ** 2)
    b = 2 * m * n
    c = (m ** 2) + (n ** 2)
    if (a + b + c) == 1000
      puts (a * b * c)
      exit
    end
  end
end