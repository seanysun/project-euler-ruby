def palindrome?(num)
  num = num.to_s
  mid_1st = (num.length - 1) / 2
  mid_2nd = num.length / 2
  if (num[0..mid_1st]) == (num[mid_2nd..-1].reverse)
    true
  else
    false
  end
end


array = []

for x in 910..999
  for y in 910..999
    array << (x * y)
  end
end

array_sorted = array.sort.reverse

array_sorted.each do |num|
  if palindrome?(num)
    puts num
    exit
  end
end