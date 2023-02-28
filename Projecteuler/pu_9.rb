# https://projecteuler.net/problem=9
number = 1000
(1..number).each do |first|
  (first...number+1).each do |second|
    third = Math.sqrt(first**2 + second**2).to_i
    next unless first < second && second < third && (first**2 + second**2) == third**2
    next unless first + second + third == 1000

    puts first * second * third
  end
end
