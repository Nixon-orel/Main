# Нужно написать класс List, принимающий неограниченное количество параметров и метод each, в блок которого последовательно передаются параметры
class List
    def initialize (*value)
        @hash = []
        @hash.push value
    end

    def each
        @hash.each {|i| yield i}
    end
end

list = List.new(1, 5, "1213", [], {})
list.each {|i| puts i}
list2 = List.new(1, 5, "abracadabra", "576", [1213])
list2.each {|i| print i}