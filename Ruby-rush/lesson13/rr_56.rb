questions = File.new ("./questions.txt")
answers = File.new ("./answers.txt")
questions_line = questions.readlines
answers_line = answers.readlines
input = ""
round = 0
while round < 5
    puts "#{questions_line[round]}"
    input = gets.to_s
    if input == "#{answers_line[round]}"
        puts "Верный ответ!"
    else
        puts "Неправильно. Верный ответ: #{answers_line[round]}"
    end
    round += 1
end
puts "Все!"