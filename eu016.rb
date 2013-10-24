arr = (2 ** 1000).to_s.split(//)
sum = arr.reduce { |total, n| total.to_i + n.to_i }
puts sum