class ProductsController < ApplicationController

  def index
    @genre = Genre.find(params[:genre_id])
    @products = @genre.products
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(products_params)
    @product.save
    redirect_to controller: 'genres', action: 'index'
  end

  private
  def products_params
    params.require(:product).permit(:name, :price, :text, { :genre_ids => [] })
  end
end
