#Нужно написать программу, которая через гетс задает фио пользователя и складывает это в массив
array_of_fio = []
class User
    attr_accessor :fio
    def initialize
        puts "Введите ФИО"
        fio = gets.to_s
        @fio = fio
    end
end
user1 = User.new
user2 = User.new
user3 = User.new
array_of_fio.push user1.fio, user2.fio, user3.fio
puts
puts array_of_fio
