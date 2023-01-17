#Нужно написать программу, которая берет номер числа в последовательности Фибоначчи и выдает это число
array_fibonacci = [0, 1, 1]
num1 = 1
num2 = 1
num3 = 0
while array_fibonacci.size < 1000
    num3 = num1 + num2
    array_fibonacci << num3
    num1 = num2
    num2 = num3
end
puts "Введите номер числа в последовательности"
user_num = gets.to_i
puts array_fibonacci[user_num - 1]