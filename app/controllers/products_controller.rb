class ProductsController < ApplicationController
  #before_filter :authorize_admin, only: :index
  respond_to :html, :json
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    respond_with @product
  end
  
  private

  def product_params
    params.require(:product).permit(:image, :price, :name, :handle, :description, :featured)
  end

end
