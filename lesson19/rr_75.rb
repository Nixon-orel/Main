#Нужно написать простой калькулятор для двух целых чисел и обработкой ошибки деления на ноль.
def calc
    system "clear"
    puts "Inter first number"
    first = gets.chomp.to_i
    puts "Inter second number"
    second = gets.chomp.to_i
    puts "Choose an action (* / + -)"
    begin
    action = gets.chomp
    puts "Result:"
    case action
    when "*"
        puts first * second
    when "/"
        puts first / second
    when "-"
        puts first - second
    when "+"
        puts first + second
    else
        puts "Wrong action!"
    end
    rescue ZeroDivisionError
        puts "Can't divide by zero!"
    end
end
calc()