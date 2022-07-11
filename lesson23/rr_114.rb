require 'json'
file = File.read("rr_114_data/rr_114.json")
card = JSON.parse(file)

puts "#{card['first_name']} #{card['second_name']} #{card['last_name']}"
puts card['phone']
puts card['email']
puts card['skills']
