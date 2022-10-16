# Нужно создать новый метод класса Time, выдающий приветствие в зависимости от времени
# Нужно создать новый метод класса Integer, выдающий количество секунд в часе, в дне и в минуте
class Time
    def hello
        time = Time.now.hour
        puts "Good evening" and return if time > 18
        puts "Good day" and return if time <= 18
        puts "Good morning" and return if time < 12
        puts "Good night" if time <= 6
    end
end
res = Time.new
res.hello

class Integer
    hash = {minutes: 60, hours: 3600, days: 86400 }
    hash.keys.each do |i|
        define_method i do
           hash[i]
        end
    end
end

puts 5.minutes
puts 9.days
puts 7.hours