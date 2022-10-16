#Нужно написать класс Unit, моделирующий команду разработчиков. Внутри класс Employee, моделирующий каждого работника. Обьект класса Unit должен иметь
# методы добавления, удаления, редактирования, вывода списка работников, вывода списка по ролям. (переписал правильно условие задачи)
class Unit 
@@team_arr = []

def team_arr
    puts @@team_arr.map {|i| "#{i.employee} => #{i}"}.sort
end

def puts_role(str)
    @@team_arr.select {|i| puts i.employee if i.employee.include?(str)}
end

class Employee
    attr_accessor :employee
end

def new_employee(value)
    new_employee = Unit::Employee.new
    new_employee.employee = value
    @@team_arr << new_employee 
end


def del_employee(str)
    @@team_arr.select {|i| @@team_arr.delete(i) if i.employee == str}
end

def change_employee(value, str)
    @@team_arr.select {|i| i.employee = str if i.employee == value}
end

end

team = %w[manager backend1 backend2 backend3 backend4 frontend1 frontend2 test design]
unit = Unit.new
team.each {|i| unit.new_employee(i)}
unit.team_arr
puts ">>>>"
unit.del_employee("backend2")
unit.team_arr
puts ">>>>"
unit.change_employee("frontend1", "manager2")
unit.team_arr
unit.puts_role("backend")
