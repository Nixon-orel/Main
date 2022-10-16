# Есть хэш с планетами и массой. Нужно вывести сначала 3 самых тяжелых, затем 3 самых легких
# Сделал как смог, жду развернух комментариев по сокращению кода.
solar_system = Hash.new
solar_system = {"Меркурий" => 330, "Венера" => 4868, "Земля" => 5973, "Марс" => 641, "Юпитер" => 1898600, "Сатурн" => 568460, "Нептун" => 102430, "Уран" => 86832}
result = solar_system.sort_by {|_key, value| value}.to_h
system "clear"
puts "Самые тяжелые планеты:"
num = 7
while num > 4
    puts "#{result.keys[num]}: #{result.values[num]}*10*42 КГ"
    num -=1
end
puts
puts "Самые легкие планеты"
num = 0
while num < 3
    puts "#{result.keys[num]}: #{result.values[num]}*10*42 КГ"
    num += 1
end