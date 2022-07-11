#https://rubyrush.ru/steps/xml-write-01

require "rexml/document"
require "date"
system "clear"
puts "This chest contains desires.
What would you like?"
user_wish = STDIN.gets.chomp.to_s
puts "When is the deadline? (enter in format dd.mm.yyyy)"
user_date = STDIN.gets.chomp
date = nil
if user_date == ''
    date = Date.today.strftime("%d-%m-%Y")
  else
    begin 
      date = Date.parse(user_date).strftime("%d-%m-%Y")
    rescue 
      puts "Date entered incorrectly. The current date will be used"
      date = Date.today.strftime("%d-%m-%Y")
    end
end

file_name = ('./rr_110_data/rr_110.xml')
current_file = File.read(file_name)
document = REXML::Document.new(current_file)
wish = document.root.add_element("wish", {"date" => date})
wish.add_text(user_wish)

File.open(file_name, "w") do |file|
    document.write(file, 2)
end
puts "Your wish is wrote."
