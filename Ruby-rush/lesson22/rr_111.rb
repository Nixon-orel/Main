#https://rubyrush.ru/steps/xml-write-02

require 'date'
require 'rexml/document'

wishes = {}
file_name = ('./rr_110_data/rr_110.xml')
current_file = File.read(file_name)
document = REXML::Document.new(current_file)
document.elements.each("wishes/wish") do |item|
    wishes[item.text.strip] = Date.parse(item.attributes["date"])
end
puts "Made wishes:"
wishes.each do |wish, date|
    current_date = wishes[wish].strftime('%d-%m-%Y')
    puts "#{current_date}: #{wishes.key(date)}" if date <= Date.today
end
puts "Unmade wishes"
wishes.each do |wish, date|
    current_date = wishes[wish].strftime('%d-%m-%Y')
    puts "#{current_date}: #{wishes.key(date)}" if date > Date.today
end