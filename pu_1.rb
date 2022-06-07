
def summ(num)
    range = (1..num).to_a
    result = range.select {|i| i % 3 == 0 || i % 5 == 0}
    puts result.inject {|i,m| i + m}
end

summ(999)