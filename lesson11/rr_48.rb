#нужно создать класс Бодибилдер, прокачать мышцы и вывести результат
class Bodybuilder
    def initialize
        @biceps = 0
        @triceps = 0
        @deltovidka = 0
    end

    def train_muscle(item)
        case item
        when "biceps"
            @biceps += 1
        when "triceps"
            @triceps += 1
        when "deltovidka"
            @deltovidka += 1
        end
    end

    def put_muscle
        puts "Бицепс: #{@biceps}"
        puts "Трицепс: #{@triceps}"
        puts "Дельтовидная мышца: #{@deltovidka}"
    end
end
first = Bodybuilder.new
second  = Bodybuilder.new
third = Bodybuilder.new
5.times do
    first.train_muscle("biceps")
    second.train_muscle("deltovidka")
    third.train_muscle("triceps")
end
9.times do 
    first.train_muscle("triceps")
    second.train_muscle("biceps")
    third.train_muscle("deltovidka")
end
7.times do
    first.train_muscle("deltovidka")
    second.train_muscle("triceps")
    third.train_muscle("biceps")
end
puts "Это первый качок:"  
"#{first.put_muscle}"
puts "Это второй качок:"
"#{second.put_muscle}"
puts "Это третий качок:"
"#{third.put_muscle}"