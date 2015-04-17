class MoviesController < ApplicationController

 # before any favorite action happens, it will authenticate the user
  before_action :authenticate_user!

  # another devise helper method that retrieves the user object that has been authenticated
  def index
    @movies = current_user.movies
  end

  def new
  end

  def create
    @movie = current_user.movies.new(movie_params)
  end

  def destroy
  end

#   private
#   def favorite_params
#     params.require(:user).permit(:body)
#   end
# end


end
