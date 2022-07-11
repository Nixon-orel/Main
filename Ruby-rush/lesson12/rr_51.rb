#Напишите программу, помогающую выбрать какой фильм сегодня просмотреть.

#Создайте класс «Фильм». У него должно быть два свойства — название фильма и фамилия режиссера. Оба этих значения должны передаваться как параметры в конструкторе.

#Напишите программу, которая спрашивает у пользователя фамилию любимого режиссера, а затем спрашивает в цикле три раза три любимых фильма этого режиссера.

#В этом же цикле программа создает массив из объектов класса «Фильм». После чего программа должа выбрать случайный элемент этого массива и выводить его на экран. То есть показать имя режиссера и название фильма.

class Movie
    attr_accessor :director, :name
    def initialize (director, name)
        @director = director
        @name = name
    end
end

puts 'Your favorite director'
director = gets
movies = 3.times.map do 
  puts 'Plz, say movie name:'
  name = gets
  Movie.new(director, name)
end
puts 'My advise is.....'
sleep 1
puts movies.sample.name
puts "Director is: #{movies.sample.director}"
