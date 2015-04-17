class FavoritesController < ApplicationController

  # before any favorite action happens, it will authenticate the user
  before_action :authenticate_user!

  # another devise helper method that retrieves the user object that has been authenticated
  def index
    @user = current_user
    @favorites = current_user.favorites
  end

  def new
    @user = current_user
    @favorite = current_user.favorites.new
  end

  def create
    @user = current_user
    @favorite_new = Favorite.new
    movie_info = @favorite_new.get_movie(params[:movie])
    movie = @user.movies.create(
          title: movie_info["Title"],
          year: movie_info["Year"],
          poster_url: movie_info["Poster"]
    )
    @favorite = movie.favorites.new
    @favorite.save
    redirect_to '/index'
  end

  def destroy
  end


end
