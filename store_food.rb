require "./store_item.rb"
require "./perishable.rb"

module Walmart
  class Food < Item
    include Perishable
    attr_reader :shelf_life

    def initialize(item_info)
      super

      @shelf_life = item_info[:shelf_life]
    end
  end
end