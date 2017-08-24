require "./store_item.rb"
require "./store_food.rb"

item_1 = Walmart::Item.new(
                  product: "Soap", 
                  price: 4, 
                  color: "blue"
                  )

item_2 = Walmart::Food.new(
                  product: "Bread", 
                  price: 5, color: "white", 
                  shelf_life: "3 days"
                  )

item_3 = Walmart::Item.new(
                  product: "Lamp", 
                  price: 25, 
                  color: "yellow"
                  )

puts item_2.product
puts item_2.price
puts item_2.color
puts item_2.shelf_life
item_2.expire
puts item_2.shelf_life