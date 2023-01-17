# Нужно создат класс Factory, в нем классы Teddy_bear, Cube и Ball. Также создать метод build, принимающий в качестве аргумента название класса,
# метод total, выдающий общее количество обьектов и метод offers, выдающий хеш со значениям по созданым игрушкам

class Factory
    class Teddy_bear; end

    class Ball; end
    class Cube; end

    @@count = 0
    @@hash = {"teddy_bear" => [], "ball" => [], "cube" => []}

    def self.build (value)
        new_obj = Factory.const_get("#{value.capitalize}").new
        @@hash[value] = @@hash[value] << new_obj
    rescue
    abort "Wrong name"
    end

    def self.total
        puts "Total made: #{@@hash.values.map {|i| i.size}.inject {|i,c| i+c}}"
    end

    def self.offers
        puts @@hash.keys.map {|key| [key, @@hash[key].size]}.to_h
    end

end

3.times {Factory.build("cube")}
5.times {Factory.build("ball")}
Factory.total
Factory.offers
4.times {Factory.build("teddy_bear")}
Factory.total
Factory.offers
Factory.build(123)