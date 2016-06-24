class Product < ActiveRecord::Base
	has_many :order_items
	
	validates_numericality_of :price
	validates_numericality_of :stock, :message=> "please insert a number", :only_integer => true, :greater_than_or_equal_to => 0

	def price=(input)
		# self.price = input
		input.delete!("$")
		super
	end
end
