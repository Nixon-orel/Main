#Проверка корректности e-mail (регулярные выражения)
def email
    puts "Inter your e-mail."
    email = gets.chomp.to_s
    return email
end    
    
def check
    if email() =~ /^[a-z0-9]+@[a-z0-9]+\.[a-z]+/
        puts "Thank you!"
    else
        puts "This is shit! Think and enter the correct email!"
        check()
    end    
end
check()