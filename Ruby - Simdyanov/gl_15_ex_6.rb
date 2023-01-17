# Дано два массива, нужно привести их к хэшу вида {red: "красный",..}
arr_eng = %i[red orange yellow green blue indigo violet]
arr_rus = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
result = arr_eng.zip(arr_rus).to_h
puts result