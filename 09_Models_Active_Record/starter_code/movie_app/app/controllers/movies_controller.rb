class MoviesController < ApplicationController
	before_action :load_movie, only: [:edit, :update, :show, :destroy]

	def index
		@movies = Movie.search_for(params[:q])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(safe_movie_params)
		if @movie.safe
			redirect_to @shirt
		else
			render 'new'
		end
	end

	def destroy
		@movie.delete
		redirect_to movies_path
	end

	def show
	end

	def edit
	end

	def update
		@movie.update safe_movie_params
		redirect_to @movie
	end

		private
		def safe_movie_params
			params.require('movie').permit(:title, :description, :year_released)
		end

		def load_movie
			@movie = Movie.find(params[:id])
		end


end