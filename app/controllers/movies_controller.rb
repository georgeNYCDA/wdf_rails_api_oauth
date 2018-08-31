class MoviesController < ApplicationController


	def index

	end


	def get_characters
		random_id = Random.rand(11)
		response = HTTParty.get("https://swapi.co/api/people/#{random_id}")

		render json: response
	end
end