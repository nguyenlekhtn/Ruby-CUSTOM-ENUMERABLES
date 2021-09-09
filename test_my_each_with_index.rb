require_relative 'custom_enumerables'

puts 'my_each_with_index vs. each_with_index'
numbers = [1, 2, 3, 4, 5]
puts 'Mine'
numbers.my_each_with_index { |item, index| p "Item: #{item}, index: #{index}" }
puts 'Origin'
numbers.each_with_index { |item, index| p "Item: #{item}, index: #{index}" }
