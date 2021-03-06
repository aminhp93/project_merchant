module ProductsHelper
	def print_price(price)
		# format("$%.2f", price)
		number_to_currency price
	end

	def print_stock(stock, requested = 1)
		if stock == 0
			# <span class="in_stock">In Stock (##)</span>
			content_tag(:span, "Out of Stock", class: "out_stock")
		elsif stock >= requested
			content_tag(:span, "In Stock (##)", class: "in_stock")
		else
			content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
			# <span class="out_stock">Out of Stock </span>
		end
	end
end
