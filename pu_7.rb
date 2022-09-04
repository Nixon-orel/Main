#https://projecteuler.net/problem=7
def simple(num)
    range = (4..200000).select{|i| i.odd?}
    arr = [2,3]
    range.each do |i|
        k = 0
        n = 1
        while i != n
           k += 1 if i%n == 0
           n += 1
        end
        arr << i if k == 1
        break if arr.size > num
    end
    puts arr[num]
end

simple(10000)
