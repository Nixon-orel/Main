require_relative 'rr_96_post.rb'
require_relative 'rr_96_memo.rb'
require_relative 'rr_96_link.rb'
require_relative 'rr_96_task.rb'

puts "Привет, я твой блокнот!"

puts "Что хотите записать в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size 
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Ваша запись сохранена!"