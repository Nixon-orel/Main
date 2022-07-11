class ResultPrinter
    def print_status(game)
        cls
        puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
        puts "Ошибки: #{game.bad_letters.join(", ").to_s}"
        print_viselitsa(game.errors)
        if game.status == -1
          puts "Вы проиграли :("
          puts "Загаданное слово было: " + game.letters.join("")
        elsif game.status == 1
          puts "Поздравляем, вы выиграли!"
        else
          puts "У вас осталось ошибок: " + (7 - game.errors).to_s
        end
    end

    def cls
        system "clear"
    end

    def get_word_for_print(letters, good_letters)
        result = ""
      
        for item in letters do
          if good_letters.include?(item)
            result += item + " "
          else
            result += "__ "
          end
        end
      
        return result
    end

    def print_viselitsa(errors)
        case errors
        when 0
          puts '
              _______
              |/
              |
              |
              |
              |
              |
              |
              |
            __|________
            |         |
            '
        when 1
          puts '
            _______
            |/
            |     ( )
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
        when 2
          puts '
            _______
            |/
            |     ( )
            |      |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
        when 3
          puts '
            _______
            |/
            |     ( )
            |      |_
            |        \\
            |
            |
            |
            |
          __|________
          |         |
          '
        when 4
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    /   \\
            |
            |
            |
            |
          __|________
          |         |
          '
        when 5
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |
            |
            |
          __|________
          |         |
          '
    
        when 6
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          '
        when 7
          puts '
            _______
            |/     |
            |     (_)
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          '
        end
    end
    
    def cls
        system('clear')
    end
end