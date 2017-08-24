food_array = []

5.times do
  p "Please enter one of your favorite foods."
  food_array << gets.chomp  
end

p food_array

# food_array.each do |food|
#   puts "I love #{food}"
# end

var = 1
food_array.each do |food|
  puts "#{var}. #{food}"
  var += 1
end