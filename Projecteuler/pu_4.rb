#https://projecteuler.net/problem=4
def pallindrom(num)
    if num.size.even?
    str = num.to_s
    str1 = str[0, str.size/2]
    str2 = str[str.size / 2, str.size / 2]
    if str1 == str2.reverse
        return true
    else
        return false
    end
    else
        return false
    end    
end

def max
result = []
number = 100
range = (100..999).to_a
while number < 1000
 range.each do |i|
     if pallindrom(i*number)
     result << i*number
     else
     next
     end
 end
number +=1
end
puts result.max
end

max()
