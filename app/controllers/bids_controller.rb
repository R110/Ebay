class BidsController < ApplicationController
  def create
    user = User.find_by(email_address: params[:email_address])
    amount = params[:amount].to_i
    product = Product.find(params[:product_id])
    bid = Bid.new(
      amount: amount,
      user: user,
      product: product
    )

    highest_amount = Bid.all.select{|b| b.product == product}.last.amount

    #bid.amount > highest_amount && bid.amount > product.bid ? bid.save : redirect_to("/error")

    bid.save
    redirect_to("/users/1/products/1")
  end
end
