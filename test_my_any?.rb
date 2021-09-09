require_relative 'custom_enumerables'

puts 'my_any? vs. any?'
puts 'Origin'
p %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
p %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
p %w[ant bear cat].any?(/d/)                        #=> false
p [nil, true, 99].any?(Integer)                     #=> true
p [nil, true, 99].any?                              #=> true
p [].any?

puts "\nMine"
p %w[ant bear cat].my_any? { |word| word.length >= 3 } #=> true
p %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true
p %w[ant bear cat].my_any?(/d/)                        #=> false
p [nil, true, 99].my_any?(Integer)                     #=> true
p [nil, true, 99].my_any?                              #=> true
p [].my_any?      
