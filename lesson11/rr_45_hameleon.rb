#Создайте класс «Хамелеон», у которого есть один метод поменять цвет. 
#Метод принимает на вход один параметр — цвет в виде строки (например "красный") и выводит на экран строку:
#Теперь я красный!
class Hameleon
    def user_colour
        puts "Введите цвет"
        colour = gets.chomp.to_s
        puts "Теперь я #{colour}!"
    end
end
first = Hameleon.new
first.user_colour