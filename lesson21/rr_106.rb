#https://rubyrush.ru/steps/xml-html-01
require 'rexml/document'
file_name = "./rr_106_data/card.xml"
abort "Sorry, file not found" unless File.exist?(file_name)
file = File.new(file_name)
doc = REXML::Document.new(file)
print doc.root.elements["name"].text.chomp
print doc.root.elements["contacts"].text.chomp
puts doc.root.elements["about"].text
file.close
