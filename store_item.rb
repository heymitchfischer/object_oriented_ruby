module Walmart
  class Item
    attr_reader :product, :price, :color
    attr_writer :product, :price, :color

    def initialize(item_info)
      @product = item_info[:product]
      @price = item_info[:price]
      @color = item_info[:color]
    end
  end
end