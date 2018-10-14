class ProductsController < ApplicationController

  def index
    @genre = Genre.find(params[:genre_id])
    @products = @genre.products
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(products_params)
    redirect_to controller: 'genres', action: 'index'
  end

  private
  def products_params
    params.require(:product).permit(:name, :price, :text, :genre_id)
  end
end
