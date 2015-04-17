class FavoritesController < ApplicationController

  # before any favorite action happens, it will authenticate the user
  before_action :authenticate_user!

  # another devise helper method that retrieves the user object that has been authenticated
  def index
    @favorites = current_user.favorites
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @favorite = current_user.favorites.new(favorite_params)
  end

  def update
  end

  def destroy
  end
  
#   private
#   def favorite_params
#     params.require(:user).permit(:body)
#   end
# end



end
