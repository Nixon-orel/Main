#Нужно создать массив из 10 случайных элементов и вывести макс и мин.
array = []
while array.size < 10
    array<<rand(1..99)
end
print array
puts
puts array.max
puts array.min