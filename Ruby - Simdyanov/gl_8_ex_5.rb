#Нужно создать программу, которая определяе четное число или нет
def evenodd(user_input)
    return "Это не число" unless user_input.instance_of?(Fixnum)
    return "Четное" if user_input.even?

    "Нечетное"
end
TEST_CASE = [1,2,"",{},7,10].freeze
TEST_CASE.each {|test| puts evenodd(test)}