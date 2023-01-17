#https://projecteuler.net/problem=5
def divider(num)
   range = (11..20)
   result = range.select {|i| num % i == 0}
   return true if result.size == 10
end

def find_number
    number = 380
    while divider(number) != true
        number += 380
    end
    puts number
end

find_number()
