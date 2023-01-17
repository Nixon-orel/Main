#Нужно создать программу, которая принимает аргумент и выдает, это строка, целое число или вещественное число.
def check(user_input)
if user_input.instance_of?(String)
    puts "String"
elsif user_input.instance_of?(Float)
    puts "Float"
elsif user_input.instance_of?(Fixnum)
    puts "Fixnum"
else 
    puts "Wrong input"
end
end
check("1")
check(2.3)
check(1)
check({})