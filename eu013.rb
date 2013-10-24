numbers = File.open('eu013-numbers.txt')
array   = numbers.read.split(/\n/)

sum = array.reduce { |total, n| total.to_i + n.to_i }
puts sum.to_s.slice(0..9)