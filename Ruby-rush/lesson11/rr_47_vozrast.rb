#Создайте в программе пару человек с разными именами и возрастами и выведите на экран информацию о них.
class User
    attr_accessor :name, :age, :surname

    def initialize
        puts "Введите имя"
        name = gets.to_s
        @name = name
        puts "Введите отчество"
        surname = gets.to_s
        @surname = surname
        puts "Введите возраст"
        age = gets.to_i
        @age = age
    end
    
    def check_age 
        if @age > 60
            puts "#{@name} #{@surname}"
            puts "И ему #{@age} - пожилой"
        else
            puts "#{@name}"
            puts "И ему #{@age} - молодой"
        end
    end
end
user1 = User.new
user2 = User.new
puts
puts "У нас есть два человека:"
user1.check_age
user2.check_age