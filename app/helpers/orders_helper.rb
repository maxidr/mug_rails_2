module OrdersHelper
  def item_with_product(order, product)
    order.items.to_a.find { |i| i.product == product }
  end
end

