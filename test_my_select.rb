require_relative 'custom_enumerables'

puts 'my_select vs. select'

puts "Origin"
p [1,2,3,4,5].select {|num| num.even? }     #=> [2, 4]

a = %w[ a b c d e f ]
p a.select {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]

puts "Mine"
p [1,2,3,4,5].my_select {|num| num.even? }     #=> [2, 4]

a = %w[ a b c d e f ]
p a.my_select {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]