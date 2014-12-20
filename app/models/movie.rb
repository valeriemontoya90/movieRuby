class Movie < ActiveRecord::Base

	def index
		@movie = Tmdb::Movie.find(params[:query])
	end

	def self.search(query)
		@movie = Tmdb::Search.new
		@movie.resource('movie') # determines type of resource
		@movie.query(query) # the query to search against
		@movie.fetch # makes request
	end

	def self.show
		@movie = Tmdb::Movie.detail(params[:id])
	  	@images = Tmdb::Movie.images(params[:id])
	  	@cast = Tmdb::Movie.casts(params[:id])
	  	@trailers = Tmdb::Movie.trailers(params[:id])
	  	@similar_movies = Tmdb::Movie.similar_movies(params[:id])
	end
end
