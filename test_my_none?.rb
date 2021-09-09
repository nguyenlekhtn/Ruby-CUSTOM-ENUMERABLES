require_relative 'custom_enumerables'

puts 'my_none? vs. none?'
puts 'Origin'
p %w{ant bear cat}.none? { |word| word.length == 5 } #=> true
p %w{ant bear cat}.none? { |word| word.length >= 4 } #=> false
p %w{ant bear cat}.none?(/d/)                        #=> true
p [1, 3.14, 42].none?(Float)                         #=> false
p [].none?                                           #=> true
p [nil].none?                                        #=> true
p [nil, false].none?                                 #=> true
p [nil, false, true].none?  

puts "\nMine"
p %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
p %w{ant bear cat}.my_none? { |word| word.length >= 4 } #=> false
p %w{ant bear cat}.my_none?(/d/)                        #=> true
p [1, 3.14, 42].my_none?(Float)                         #=> false
p [].my_none?                                           #=> true
p [nil].my_none?                                        #=> true
p [nil, false].my_none?                                 #=> true
p [nil, false, true].my_none?  
