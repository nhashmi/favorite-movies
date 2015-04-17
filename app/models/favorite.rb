class Favorite < ActiveRecord::Base
	belongs_to :user
	belongs_to :movie

	def get_movie(movie)
		@movie = movie
	 	@response = HTTParty.get("http://www.omdbapi.com/?t=#{@movie}&y=&plot=short&r=json")
	 	return @response
	end

end
