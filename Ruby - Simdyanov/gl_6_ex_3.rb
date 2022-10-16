#Очередной факториал
def factorial(number)
    sequence = 1
    start = 1
    while start <= number
        sequence = sequence*start
        start += 1
    end
    puts sequence
end
puts "Введите число"
user_num = gets.to_i
factorial(user_num)