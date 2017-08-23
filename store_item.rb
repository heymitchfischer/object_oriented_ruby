# item_1 = {:product => "Soap", :price => 4, :color => "blue"}
# item_2 = {:product => "Bread", :price => 5, :color => "white"}
# item_3 = {product: "Lamp", price: 25, color: "yellow"}

class Item
  attr_reader :product, :price, :color
  attr_writer :product, :price, :color

  def initialize(item_info)
    @product = item_info[:product]
    @price = item_info[:price]
    @color = item_info[:color]
  end
end

class Food < Item
  attr_reader :shelf_life

  def initialize(item_info)
    super

    @shelf_life = item_info[:shelf_life]
  end
end

item_1 = Item.new(product: "Soap", price: 4, color: "blue")
item_2 = Food.new(product: "Bread", price: 5, color: "white", shelf_life: "3 days")
item_3 = Item.new(product: "Lamp", price: 25, color: "yellow")

puts item_2.product
puts item_2.price
puts item_2.color
puts item_2.shelf_life