class ItemPoro
  attr_reader :id, :name, :description, :unit_price

  def initialize(data)
    # require 'pry';binding.pry
    @id = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end
