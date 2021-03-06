class ProductsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @genre = Genre.find(params[:genre_id])
    @products = @genre.products.includes(:user)
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(products_params)
    redirect_to controller: 'genres', action: 'index'
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.user.id == current_user.id
    product.update(products_params)
    redirect_to controller: 'genres', action: 'index'
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.user.id == current_user.id
    product.destroy
    redirect_to controller: 'genres', action: 'index'
    end
  end

  private
  def products_params
    params.require(:product).permit(:name, :price, :text, :genre_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: "index" unless user_signed_in?
  end

end
