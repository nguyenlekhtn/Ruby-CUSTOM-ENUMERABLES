require_relative 'custom_enumerables'

puts 'my_map vs. map?'
puts 'Origin'
p a = [ "a", "b", "c", "d" ]
p a.collect {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
p a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
p a      

puts "\nMine"
p a = [ "a", "b", "c", "d" ]
p a.my_map {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
p a.my_map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
p a      

puts "take proc"
proc = Proc.new { |x| x * 2}
b = [1, 2, 3, 4]
p b.my_map(proc)
puts "take block"
p b.my_map { |x| x * 3}
puts "take both proc and block"
p b.my_map(proc) { |x| x * 3}