#Нужно создать метод weekends, который будет возвращать все выходные текущего года. В блок метода должна передаваться 
# последовательность обьектов Date.
require 'date'
def weekends
    system "clear"
    weekends =[]
    now = Date.today
    this_year = Date.new(now.year,1,1)
    next_year = this_year.next_year.year
    while this_year.year < next_year
        weekends.push this_year if this_year.sunday? || this_year.saturday?
        this_year += 1
    end
    weekends.each {|i| yield i}
end
weekends {|i| print "#{i}, "}
puts