# Нужно написать модуль, при включении которого в класс этот класс получает ограничение на количество новых обьектов. 

module Fivable
    @@arr =[]
    def initialize
        if @@arr.select {|i| i.is_a?(self.class)}.size < 5
            @@arr << self
        else
            puts "You can't made new class \'#{self.class}\' objects"
            undef_method(:new) 
        end
    rescue
    end

    def arr
        puts @@arr
    end
end

class One
    include Fivable
    extend Fivable
end

class Two
    include Fivable
end
5.times {Two.new}
5.times {One.new}
Two.new
One.new
One.arr
3.times {One.new}




