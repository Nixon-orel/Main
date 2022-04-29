require_relative 'rr_49_game'
require_relative 'rr_49_result'

printer = ResultPrinter.new

puts "Игра виселица. Версия 2."
sleep 1

slovo = ARGV[0]

game = Game.new(slovo)

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)