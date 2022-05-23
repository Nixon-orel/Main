#Нужно написать класс водных суден, наследовать от него два класса "над_водой" и "под_водой". 
#Затем придумать, как создать названия суден и их свойства из хеша.
class Boat
attr_accessor :name, :atributes
@@ARR_ATRIBUTES = %w[rockets torpedos cargo_hold crane].freeze
@@HASH_UNDER = {cargo: [3,4],container_ship: [4], tanker: [3], rocket_ship: [1], military_transport_ship: [1, 3, 4]}.freeze
@@HASH_ABOVE = {submarine: [1,2]}.freeze

def self.puts_boat
    @arr.each {|i| puts "#{i.name} >> #{i.atributes} : #{i}"}
end

end


class Underwater < Boat
@arr = []
@@HASH_UNDER.each do |key, value| 
    n = Underwater.new
    n.name = key
    atr = value.map {|i| i = @@ARR_ATRIBUTES[i-1]}
    n.atributes = atr
    @arr << n
end

end

class Abovewater < Boat
@arr = []
@@HASH_ABOVE.each do |key, value| 
        n = Abovewater.new
        n.name = key
        atr = value.map {|i| i = @@ARR_ATRIBUTES[i-1]}
        n.atributes = atr
        @arr << n
end    
end

Underwater.puts_boat
Abovewater.puts_boat