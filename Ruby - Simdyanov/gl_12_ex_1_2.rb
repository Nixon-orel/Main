# Самодельный итератор map
def my_map(i)
    arr = []
    i.each do |item|
        res = yield item
        arr << res   
    end
    return arr
end
TEST = [1, 2, 4, 5, 7].freeze
puts my_map(TEST) {|x| x*x }
puts ">>>"
# Самодельный итератор select
def my_select(i)
    arr = []
    i.each do |item|
        res = yield item
        arr << item if res == true
        end
        return arr
end
puts my_select(TEST) {|x| x.even? }