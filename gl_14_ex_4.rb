# Создать класс, который принимает на вход хэш и создает потом методы по названию ключа, которые выводят значение.

class Foo
    def initialize (value = {})
        @value = value
    end
    
    def method
    @value.each do |method, name|
        define_singleton_method method do
            name
        end
    end
end
end

foo = Foo.new ({one: 'один', two: 'два', three: 'три', four: 'четыре'})
foo.method
puts "#{foo.one} #{foo.two} #{foo.three} #{foo.four}"