class ProductsController < ApplicationController
  def index
    @products = Product.all.select{|p| p.user == User.find(params[:user_id])}
  end
  def new
    render "new"
  end
  def show
    @product = Product.find params[:id]
    @bids = Bid.all.select{ |b| b.product == @product}
    @final_bid = @bids.last

    #@past_deadline = Time.now > @product.deadline
  end
  def create
    user = User.find params[:user_id]
    desc = params[:product_description]
    title = params[:product_title]
    deadline = params[:product_deadline]
    product = Product.new(
      title: title,
      deadline: deadline,
      description: desc,
      user: user
    )
    product.save
    redirect_to("/users/1")
  end

end
