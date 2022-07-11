
class Product
    attr_accessor :price, :balance
    def initialize(price, balance)
        @price = price
        @balance = balance
    end

    def info;end

    def update(params);end

    def show
        "#{info} - #{@price}$ [avalible: #{@balance}]"
    end

    def self.showcase(products)
        puts "What do you want to buy?\n\n"
    
        products.each_with_index do |product, index|
          puts "#{index}: #{product.show}"
        end
    
        puts "x. Leave the store \n\n"
    end    
end

class Book < Product
    attr_accessor :title, :author
    def update(params)
        @title = params[:title]
        @author = params[:author]
    end

    def info
        "Book \"#{@title}\", author: #{@author}"
    end
end

class Movie < Product
   attr_accessor :title, :director, :year
   def update(params)
      @year = params[:year]
      @title = params[:title]
      @director = params[:director]
   end
   
   def info
      "Movie \"#{@title}\", director: #{@director}, (#{year})"
   end
   
end

class Disk < Product
    attr_accessor :title, :artist
    def update(params)
        @title = params[:title]
        @artist = params[:artist]
    end

    def info
        "Disc #{@artist} - #{@title}"
    end
end
