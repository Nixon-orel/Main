# Программа поиска наибольшего простого делителя большого числа.

def simple(num)
    sqrt = Math.sqrt(num).to_i
    range = (2..sqrt)
    n = 0
    range.select {|i| n += 1 if num % i == 0}
    return num if n == 0
end

def divider(num)
    range = (2..1000000)
    dividers_min = range.select {|i| num % i == 0}
    dividers_max = []
    dividers_min.each {|i| dividers_max << num/i}
    puts (dividers_min + dividers_max.reverse).select {|i| simple(i)}.max
end

divider(600851475143)
