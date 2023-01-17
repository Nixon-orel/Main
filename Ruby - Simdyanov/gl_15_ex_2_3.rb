# Массив arr нужно превратить в хеш вида {first: 1,..}
arr = %i[first second third]
result = arr.map.with_index {|x, i| [x, i+1]}.to_h
puts result

# Привести массив к виду [first: 'Fst (1)', ..] в одну строчку
array = %w[first second third]
puts array.map {|i| i + ": \'#{i.chars[0].capitalize + i.chars[-2] + i.chars[-1]}" + " (#{array.index(i)+1})\'"}