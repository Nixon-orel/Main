#Нужно написать модуль с методом, переводящим арабкие цифры в римские. И добавить метод в класс Integer
#Не стал заморачиваться с написанием, скачал готовый гем.
require 'cousin_roman'
module RomanNumber
    def roman
       puts self.to_roman
    end
end

class Integer
    include RomanNumber
end

TEST_NUM = [1,10,15,50,47,690,587,114].freeze
TEST_NUM.each {|i| i.roman}