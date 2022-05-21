# Нужно создать класс User, принимающий имя, фамилию и отчество.
# Потом создать класс Group, принимающий на вход обьекты класса User и написать метод each,
# при помощи которого можно обойти список пользователей и произвести с каждым действие.
class User
    attr_accessor :name, :surname, :last_name
end

arr = []
3.times do
    arr << User.new
end

user = 0
name = "A"

3.times do
   arr[user].name = name
   arr[user].surname = name + "C"
   arr[user].last_name = name + "CD"
   user += 1 
   name += "B"
end

class Group
    def initialize(*value)
        @result = []
        @result << value
    end

    def each
        @result.each {|i| yield i}
    end
end

user = 0
3.times do
    puts "Obj: #{arr[user]}, name: #{arr[user].name}, surname: #{arr[user].surname}, last name: #{arr[user].last_name}"
    user += 1
end

res = Group.new(arr[0], arr[1], arr[2])
res.each {|i| puts i}