require_relative 'custom_enumerables'

puts 'my_count vs. count?'
puts 'Origin'
p ary = [1, 2, 4, 2]
p ary.count                  #=> 4
p ary.count(2)               #=> 2
p ary.count {|x| x%2 == 0}   #=> 3

puts "\nMine"
p ary = [1, 2, 4, 2]
p ary.my_count                  #=> 4
p ary.my_count(2)               #=> 2
p ary.my_count {|x| x%2 == 0}   #=> 3