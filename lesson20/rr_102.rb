#update rr_98.rb
#Продолжаем развивать наш «Магазин»: реализуйте функционал считывания продуктов из папки data. Пусть в папке, например, data/films лежат текстовые файлы в формате, который вам уже знаком (добавляется цена и остаток на складе):
#Название фильма
#Фамилия и имя режиссера
#Год выхода
#Цена
#Остаток
#А в паке data/books — файлы в таком формате:
#Название книги
#Жанр
#Фамилия и имя автора
#Цена
#Остаток
#Напишите для каждого класса-ребенка метод класса (статический метод) from_file, который создает новый экземпляр класса, заполняя его данными из файла, чтобы можно было написать вот так:
#film = Film.from_file('./data/films/01.txt')
#book = Book.from_file('./data/books/01.txt')
#Сделайте также, чтобы метод родителя возвращал ошибку NotImplementedError, на случай, если какой-то ребенок попытается создать себя используя статический метод родителя.

class Product
    attr_accessor :price, :balance
    def initialize(params)
        @price = params[:price]
        @balance = params[:balance]
    end

    def to_s
        puts "#{@price}$, (#{@balance} avalible)"
    end

    def self.from_file
        puts "NotImplementedError"
    end
end

class Book < Product
    attr_accessor :name, :genre, :author
    def initialize(params)
        super
        @name = params[:name]
        @genre = params[:genre]
        @author = params[:author]
    end

    def to_s
        puts "Book \"#{@name}\", #{@genre}, author - #{@author}, #{@price}$, (#{@balance} avalible)"
    end

    def self.from_file(file_path)
        if File.exist?(file_path)
            lines = File.readlines(file_path).map {|line| line.chomp}
            return Book.new(name:lines[0], genre:lines[1], author:lines[2], price:lines[3], balance:lines[4])
        else
            puts "File is not found"
        end

    end
end

class Movie < Product
    attr_accessor :name,  :year, :director
    def initialize(params)
      super
      @name = params[:name]
      @year = params[:year]
      @director = params[:director]
    end
   
    def to_s
      puts "Movie \"#{@name}\", #{@year}, director - #{@director}, #{@price}$, (#{@balance} avalible)"
    end
    
    def self.from_file(file_path)
        if File.exist?(file_path)
            lines = File.readlines(file_path).map {|line| line.chomp}
            return Movie.new(name:lines[0], director:lines[1], year:lines[2], price:lines[3], balance:lines[4])
        else
            puts "File is not found"
        end

    end
end

product = []
product << Book.from_file('./rr_102_data/books/01.txt')
product << Book.from_file('./rr_102_data/books/02.txt')
product << Movie.from_file('./rr_102_data/movies/01.txt')
product << Movie.from_file('./rr_102_data/movies/02.txt')
product << Product.from_file
product.each {|p| p.to_s}

