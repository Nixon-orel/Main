#При помощи класса OpenStruct написать классы кораблей с атрибутами. Создать по три обьекта каждого класса и
# расставить их на поле 10*10. Каждый корабль занимает одну клетку. В одно клетке не может быть два корабля.
require 'ostruct'
class Submarine < OpenStruct; end
class Rocket_Ship < OpenStruct; end
class Cargo_Ship < OpenStruct; end
boat = []
num = (1..10)
while boat.size < 3
    arr_x = []
    a = Submarine.new(x:rand(num), y:rand(num), rocket:rand(num), torpedos:rand(num))
    boat << a
    boat.each do |object|
       arr_x << object.x
       boat.delete(a) if arr_x.uniq.size < arr_x.size
    end
end

while boat.size < 6
    arr_x = []
    a = Rocket_Ship.new(x:rand(num), y:rand(num), rocket:rand(num))
    boat << a
    boat.each do |object|
       arr_x << object.x
       boat.delete(a) if arr_x.uniq.size < arr_x.size
    end
end

while boat.size < 9
    arr_x = []
    a = Cargo_Ship.new(x:rand(num), y:rand(num), crane:rand(num), cargo:rand(num))
    boat << a
    boat.each do |object|
       arr_x << object.x
       boat.delete(a) if arr_x.uniq.size < arr_x.size
    end
end

puts boat