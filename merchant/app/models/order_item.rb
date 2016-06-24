class OrderItem < ActiveRecord::Base	
	belongs_to :order
	belongs_to :product
	
	validates_presence_of :order_id, :product_id
	validates :quantity, numericality: {only_integer: true, greater_than: 0}

	def subtotal
		quantity * product.price
	end

end
