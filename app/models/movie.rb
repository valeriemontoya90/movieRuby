class Movie < ActiveRecord::Base

	def index
		@movie = Tmdb::Movie.find(params[:query])
	end

	def self.search(query)
		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(query) # the query to search against
		@search.fetch # makes request
	end

	def self.show
		@movie = Tmdb::Movie.detail(params[:id])
	  	@images = Tmdb::Movie.images(params[:id])
	  	@cast = Tmdb::Movie.casts(params[:id])
	  	@trailers = Tmdb::Movie.trailers(params[:id])
	  	@similar_movies = Tmdb::Movie.similar_movies(params[:id])
	end
end
