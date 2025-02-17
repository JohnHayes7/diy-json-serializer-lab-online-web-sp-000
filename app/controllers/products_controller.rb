class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def data
    product = Product.find(params[:id])
    # product.inventory = ""
    # product.description = ""
    # product.save
    render json: ProductSerializer.serialize(product)
  end

  def show
    # binding.pry
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
