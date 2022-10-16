#Очередная последловательньсть Фибоначчи, программа по выдает последовательность с начала до номера переданного числа.
#Нужно также передать блок к каждому числу
def fibonacci(num)
    one = 0
    two = 1
    three = 1
    arr = []
    arr.push one, two, three
    times = 3
    while times <= num
        one  = two + three
        arr.push one
        two = three
        three = one
        times += 1
    end
    arr.each {|i| yield i}
end
fibonacci(25) {|i| print "#{i}, "}
puts
fibonacci(15) {|i| print "#{i+3}, "}
puts
