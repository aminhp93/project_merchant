module ProductsHelper
	def print_price(price)
		# format("$%.2f", price)
		number_to_currency price
	end
end
