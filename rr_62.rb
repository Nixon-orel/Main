require 'translit'
puts "Input phraze for translite:"
phraze = gets.chomp.to_s
puts Translit.convert(phraze)