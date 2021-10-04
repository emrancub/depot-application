module CurrentCart

  private
  def set_cart
    @card = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @card = Cart.create
    session[:cart_id] = @card.id
  end
end
