# Перевод цельсия в фаренгейт и обратно
def cel2far(cel)
    result = ((cel.to_f*9/5)+32).round(2)
end
def far2cel(far)
    result = ((far.to_f-32)*5/9).round(2)
end
TEST_CASE = [5,10,20,30].freeze
TEST_CASE.each {|x| puts cel2far(x)}
TEST_CASE.each {|y| puts far2cel(y)}