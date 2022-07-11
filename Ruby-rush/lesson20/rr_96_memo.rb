class Memo < Post

    def read_from_console
      puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
      line = nil
      while line != "end" do
        line = STDIN.gets.chomp
        @text << line
      end
      @text.pop
    end
  
    def save
      file = File.new(file_path, "w:UTF-8")
      time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
      file.puts(time_string + "\n\r")
      for item in @text do
        file.puts(item)
      end
      file.close
      puts "Ваша запись сохранена"
    end

end