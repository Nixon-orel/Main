require 'date'
now = Date.today
monday = now - (now.wday - 1)
sunday = monday + 6
puts monday.strftime('%d-%m-%Y') + " - " + sunday.strftime('%d-%m-%Y')