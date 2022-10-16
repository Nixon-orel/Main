#Нужно создать класс Hello и метод hello, который выдает приветствие, в зависимости от времени
class Hello
    def hello
        time_now = Time.now
        hour_now = time_now.hour
    if hour_now < 6
        puts "Доброй ночи"
    elsif 6 <= hour_now && hour_now < 12
        puts "Доброе утро"
    elsif 12 <= hour_now && hour_now < 18
        puts "Добрый день"
    else 
        puts "Добрый вечер"
    end
    end
end