require_relative 'custom_enumerables'

puts 'my_inject vs. inject?'
# puts 'Origin'
# # Sum some numbers
# p (5..10).reduce(:+)                             #=> 45
# # Same using a block and inject
# p (5..10).inject { |sum, n| sum + n }            #=> 45
# # Multiply some numbers
# p (5..10).reduce(1, :*)                          #=> 151200
# # Same using a block
# p (5..10).inject(1) { |product, n| product * n } #=> 151200
# # find the longest word
# longest = %w{ cat sheep bear }.inject do |memo, word|
#    memo.length > word.length ? memo : word
# end
# p longest     

# puts "\nMine"
# # Sum some numbers
# p (5..10).my_inject(:+)                             #=> 45
# # Same using a block and inject
# p (5..10).my_inject { |sum, n| sum + n }            #=> 45
# # Multiply some numbers
# p (5..10).my_inject(1, :*)                          #=> 151200
# # Same using a block
# p (5..10).my_inject(1) { |product, n| product * n } #=> 151200
# # find the longest word
# longest = %w{ cat sheep bear }.my_inject do |memo, word|
#    memo.length > word.length ? memo : word
# end
# p longest

def multiply_els(arr)
  arr.my_inject { |a, v| a * v }
end

p multiply_els([2,4,5])
p [1, 2, 3].my_inject(4) { |a, v| a * v}

