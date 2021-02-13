class MoviesController < ApplicationController

  before_action :set_movie, only:[:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @movies = Movie.includes(:user).order("created_at DESC")
  end

  def new
    @movie = Movie.new
  end
    
  def create
    Movie.create(movie_params)
  end

  def destroy
    movie = Mpvie.find(params[:id])
    movie.destroy
  end

  def edit
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
  end

  def show
  end

  def search
    @movies = Movie.search(params[:keyword])
  end

  private
  def movie_params
    params.require(:movie).permit(:image, :name).merge(user_id: current_user.id)
  end

  def set_tweet
    @movie = Movie.find(params[:id]) 
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
