require_relative 'custom_enumerables'

puts 'my_all? vs. all?'
puts 'Origin'
p %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
p %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
p %w[ant bear cat].all?(/t/)                        #=> false
p [1, 2i, 3.14].all?(Numeric)                       #=> true
p [nil, true, 99].all?                              #=> false
p [].all?

puts "\nMine"
p %w[ant bear cat].my_all? { |word| word.length >= 3 } #=> true
p %w[ant bear cat].my_all? { |word| word.length >= 4 } #=> false
p %w[ant bear cat].my_all?(/t/)                        #=> false
p [1, 2i, 3.14].my_all?(Numeric)                       #=> true
p [nil, true, 99].my_all?                              #=> false
p [].my_all?    