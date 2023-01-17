#https://projecteuler.net/problem=6

def result(range)
sum_square = range.map {|i| i*i}.sum
square_sum = range.inject {|i,k| k+i}**2
puts square_sum - sum_square
end

result(1..100)