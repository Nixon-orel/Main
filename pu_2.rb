#https://projecteuler.net/problem=2
def fibonacci_summ(num)
    fib_arr = [1,2]
    one = 3
    two = 2
    three = 0
    while one < num
        fib_arr << one
        three = two
        two = one
        one = two + three
    end 
    puts fib_arr.select{|i| i.even?}.inject {|i, m| i + m}
end
fibonacci_summ(4000000)