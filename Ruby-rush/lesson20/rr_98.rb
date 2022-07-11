#Напишите заготовку для небольшого магазинчика, который торгует фильмами и книгами.
#Создайте класс продукта, у экземпляров которого есть два поля: цена и количество на складе. При создании нового продукта можно передать значения цены и остатка. Для этих переменных сделайте геттеры.
#Унаследуйте от этого класса два других: книгу и фильм соответственно. Своих переменных у этих классов пока нет.
#update!
#Продолжаем развивать наш «Магазин», который мы создали в уроке про наследование классов.
#Сделайте так, чтобы из основной программы можно было создать объект класса Book или Film, передав ему кроме цены также другие параметры. Для книги — название, жанр и автора; для фильма — название, год и режиссера.
#Напишите также метод to_s для экземпляра класса Film и Book, который возвращает информацию об этом экземпляре одной строкой.
#В основной программе создайте пару книжек и фильмов и выведите их в цикле на экран.

class Product
    attr_reader :price, :balance
    def initialize(params)
        @price = params[:price]
        @balance = params[:balance]
    end

    def to_s
        puts "#{@price}$, (#{@balance} avalible)"
    end
end

class Book < Product
    attr_reader :name, :genre, :author
    def initialize(params)
        super
        @name = params[:name]
        @genre = params[:genre]
        @author = params[:author]
    end

    def to_s
        puts "Book \"#{@name}\", #{@genre}, author - #{@author}, #{@price}$, (#{@balance} avalible)"
    end
end
class Movie < Product
   def initialize(params)
      super
      @name = params[:name]
      @year = params[:year]
      @director = params[:director]
   end
   
   def to_s
      puts "Movie \"#{@name}\", #{@year}, director - #{@director}, #{@price}$, (#{@balance} avalible)"
   end
   
end

product = []
product << Product.new(price:500, balance:16)
product << Book.new(price:1000, balance:3, name:"Idiot", genre:"novel", author:"Fedor Dostaevskiy")
product << Movie.new(price:700, balance:2, name:"Goodfellas", year:1990, director:"Martin Scorseze")
product.each {|p| p.to_s}

