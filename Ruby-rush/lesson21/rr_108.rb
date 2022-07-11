#https://rubyrush.ru/steps/xml-html-03

require_relative './rr_108_data/product.rb'
require 'rexml/document'

class Product
    def buy
        if @balance > 0
            puts "* * *"
            puts "You are buy #{info}"
            puts "* * *\n\n"
      
            @balance -= 1
            price
          else
            puts "Out of stock"
            0
        end
    end

    def self.read_from_xml(file_name)
        unless File.exist?(file_name)
          abort "File #{file_name} is not found"
        end
    
        file = File.new(file_name)
        doc = REXML::Document.new(file)
        file.close
    
        result = []
        product = nil
     
        doc.elements.each("products/product") do |element|
          price = element.attributes["price"].to_i
          balance = element.attributes["balance"].to_i
    
          element.each_element("book") do |book|
            product = Book.new(price, balance)
            product.update(title: book.attributes["title"], author: book.attributes["author"])
          end
    
          element.each_element("movie") do |movie|
            product = Movie.new(price, balance)
            product.update(title: movie.attributes["title"], director: movie.attributes["director"], year: movie.attributes["year"])
          end
    
          element.each_element("disk") do |disk|
            product = Disk.new(price, balance)
            product.update(artist: disk.attributes["artist"], title: disk.attributes["title"])
          end

          result.push(product)
        end

        return result
    end
end

total_price = 0
products = Product.read_from_xml('./rr_108_data/product.xml')
choice = nil
while choice != 'x'
  Product.showcase(products)
  choice = gets.chomp
  if choice != 'x' && choice.to_i < products.size && choice.to_i >= 0
    product = products[choice.to_i]
    total_price += product.buy
  end
end

puts "Thanks for shopping, pay #{total_price} rub "


