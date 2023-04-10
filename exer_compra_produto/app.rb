require_relative 'product'
require_relative 'market'

product = Product.new
product.name = 'Suggar'
product.price = 4.00

Market.new(product.name, product.price).buy
