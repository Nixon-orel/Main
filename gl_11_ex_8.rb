# Нужно создать класс, берущий имя и оценку, вычислить средний балл и вывести имена, у которых оценка выше или равна средней.
# Прошу дать развернытые варианты упрощения и сокращения кода.
class User
    attr_accessor :fio, :grade

    def initialize(fio, grade)
        @fio = fio
        @grade = grade
    end

    def self.new_user
        puts "Input FIO"
        fio = gets.chomp.to_s
        puts "Input grade"
        grade = gets.chomp.to_i
        new(fio,grade)
    end
    def under_average?(average)
       @grade >= average
    end

end

puts "How many users will be?"
n = gets.to_i - 1
users = (0..n).to_a.map {User.new_user}
average_grade = users.map {|user| user.grade}.reduce {|x, m| x + m } / users.size
puts "Under average grade are users:"
users.each {|user| puts user.fio if user.under_average?(average_grade)}