#Нужно написать программу, которая получает год, месяц и день рождения пользователя
# и возвращает полный возраст. Не могу понять, почему считает не всегда верно.
today = Time.now
year_today = today.year
month_today = today.month
day_today = today.day
puts "Введите год своего рождения"
user_year = gets.to_i
puts "Введите месяц своего рождения"
user_month = gets.to_i
puts "Введите день своего рождения"
user_day = gets.to_i
if user_month == month_today && user_day <= day_today
    result = year_today - user_year
elsif user_month < month_today
    result = year_today - user_year
else
    result = year_today - user_year - 1 
end
puts "Вам #{result} полных лет"