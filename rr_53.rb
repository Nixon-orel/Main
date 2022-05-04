#Написать программу, которая считает сколько в указанном файле строк всего, сколько пустых строк, 
#а также выводит на экран последние 5 строк этого файла.

#Пользователь вводит название файла в качестве параметра консоли при запуске. Если же файл не найден, 
#то сообщает об этом пользователю.
file = File.new("/home/nixon/study/Main/file.txt")
if File.exist?(file)
    system "clear"
    lines = file.readlines
    puts "Вы открыли файл: #{File.basename("/home/nixon/study/Main/file.txt")}"
    puts "Количество строк: #{lines.size}"
    empty = 0
    lines.each do |i|
        empty +=1 if i == "\n"
    end
    puts "Количество пустых строк: #{empty}"
    puts "Последние 5 строк:
    >>"
    index = -5
    5.times do 
        puts lines[index]
        index += 1
    end
    
else
    puts "Файл не найден"
end