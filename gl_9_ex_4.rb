#Нужно написать программу, которая через гетс задает фио пользователя и складывает это в массив
array_of_fio = []
class User
    attr_accessor :fio
end
# Не могу придумать, как все ниже всунуть в класс, чтобы не делать три раза одно и то же.
user1 = User.new
user2 = User.new
user3 = User.new
puts "Введите ФИО юзеров"
user1.fio = gets.to_s
user2.fio = gets.to_s
user3.fio = gets.to_s
array_of_fio<<user1.fio
array_of_fio<<user2.fio
puts array_of_fio
