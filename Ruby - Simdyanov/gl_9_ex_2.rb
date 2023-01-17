#Проверка текущего года на высокосность
year = Time.now.year
def leap_year_check(user_year)
    return "Обычный" unless user_year % 4 == 0
    return "Обычный" if user_year % 100 == 0 && user_year % 400 == 0 
    
    "Високосный"
end
puts leap_year_check(year)
puts "Введите год"
user_input = gets.to_i
puts leap_year_check(user_input)
