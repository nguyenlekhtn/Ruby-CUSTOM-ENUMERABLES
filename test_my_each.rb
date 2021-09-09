require_relative 'custom_enumerables'

puts 'my_each vs. each'
numbers = [1, 2, 3, 4, 5]
puts 'Mine'
numbers.my_each { |item| p item }
puts 'Origin'
numbers.each { |item| p item }
