#Нужно написать программу, принимающую любое количество цифр и выдающую сумму.
puts "введите числа"
user_input = gets.split 
array_num = user_input.collect {|x| x.to_i}
puts array_num.inject(0, :+)