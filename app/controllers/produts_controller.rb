class ProdutsController < ApplicationController

  before_action :set_genre

  def index
    @products = @genre.products
  end

  def set_genre
    @genre = Genre.find(params[:genre_id])
  end
end
