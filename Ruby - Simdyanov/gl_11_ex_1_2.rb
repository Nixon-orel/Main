#Программа должна бесконечно брать цвета до слова "стоп". После вывести результат по алфавиту и только уникальные значения.
#Долго йобся, в итоге вычитал, что многие методы строк с кириллицей просто не работают. Перевел все на инглиш и вуаля! - все заработало.
colours = Array.new
value = ""
while value != "stop"
    puts "Введите цвет на английском"
    value = gets.chomp
    break if value == "stop"
    colours.push value
end
result = colours.map {|x| x.capitalize}
puts ">>>" 
puts result.sort.uniq