# Создать класс, моделирующий состояние вещества. Методы status, возвращающий состояние, и много методов, переводящих из одного состояния в другое.
# Писать все не стал, принцип одинаковый.
class Substance

    def initialize
        @condition = "solid"
    end

    def status
        @condition
    end
    
    def melt
        if @condition == "solid" 
            @condition = "liquid"
        else
            puts "wrong condition"
        end
    end

    def freeze
        if @condition == "liquid"
            @condition = "solid"
        else
            puts "wrong condition"
        end
    end

    def boil
        if @condition == "liquid"
            @condition = "gaz"
        end
    end
end

sub = Substance.new
puts sub.status
sub.melt
puts sub.status
sub.melt
puts sub.status
sub.boil
puts sub.status