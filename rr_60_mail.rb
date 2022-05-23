require 'pony'
my_mail = "nixon123@mail.ru"
puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.gets.chomp

puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp

puts "Какая тема письма?"
subject = STDIN.gets.chomp

Pony.mail({
    :subject => subject,
    :body => body,
    :to => send_to,
    :from => my_mail,
    :via => :smtp,
    :via_options => {
      :address => 'smtp.mail.ru',
      :port => '465',
      :tls => true,
      :user_name => my_mail,
      :password => password,
      :authentication => :plain
    }
  })

