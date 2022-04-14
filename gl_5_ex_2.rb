
#Нужно принять координаты точек (создать общий класс) и посчитать растояние между ними
class Point
    def set_coor_x(x)
        @x = x
    end
    def set_coor_y(y)
        @y = y
    end
    def coor_x
        @y
    end
    def coor_y
        @y
    end
end
def dist_between_points(xa,ya,xb,yb)
    d = Math.sqrt((xa-xb)**2 + (yb-ya)**2)
end

point1 = Point.new
point2 = Point.new
a1 = point1.set_coor_x(3)
a2 = point1.set_coor_y(6)
b1 = point2.set_coor_x(-1)
b2 = point2.set_coor_y(5)
puts dist_between_points(a1,a2,b1,b2).round(2)
#Готово! Посмотри, как подтвердишь, буду все опять сносить и по нормальной логике гита делать.