class Market
  def initialize(product, price)
    @product = product
    @price = price
  end

  def buy
    puts "You bought #{@product} for the price of R$#{@price}."
  end
end
