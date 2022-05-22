# Нужно взять текскт и отсортировать слова больше 5 букв, вывести количество и слова по алфавиту. Русский в моем руби не поддается методам о операторам, так что инглиш.
str = "Give the text of this exersise and and extract from it all the words in which the number of characters is more than 5. " 
result = str.split.select {|i| i.size > 4}
puts result.size
puts result.sort

# Нужно взять текст и собрать все слова, начинающиеся на определенную букву, проверить уникальность и отсортировать по размеру.
puts ">>"
string = "Take the text of this task and extract from it the words that begin with the character \'с\'. Form a list of unique words from them and output in order of increasing characters in the word."
res = string.split.select {|i| i.chr.eql?("t")}
puts res.uniq.sort.sort_by {|i| i.size}