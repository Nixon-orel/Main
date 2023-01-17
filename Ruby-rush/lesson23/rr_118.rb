#https://rubyrush.ru/steps/json-04
require 'json'
file = File.read("rr_118_data/rr_118.json")
table = JSON.parse(file)
puts "What element do you want to know about? #{table.keys}"
input = STDIN.gets.chomp
table.each do |key, value|
    if key == input
        puts "Number: #{value["number"]}"
        puts "Name: #{value["name"]}"
        puts "Density: #{value["density"]}"
        puts "Year: #{value["year"]}"
        puts "Discoverer: #{value["discoverer"]}"
    end
end