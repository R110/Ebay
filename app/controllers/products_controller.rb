class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    render "new"
  end
  def show
    @product = Product.find params[:product_id]
  end
  def create
    desc = params[:product_description]
    title = params[:product_title]
    deadline = params[:product_deadline]
    product = Product.new(
      title: title,
      deadline: deadline,
      product: product
    )
    product.save
    redirect_to("/products")
  end

end
