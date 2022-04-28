#Нужно узнать, содержат ли строчки массива "t" и потом изменить все буквы на заглавные
array = %w[cat dog tiger]
array.map {|x| puts x if x.include?("t")}
array.map {|x| puts x.upcase}