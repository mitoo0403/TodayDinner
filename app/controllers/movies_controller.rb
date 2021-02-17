class MoviesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :destroy]
  before_action :set_movie, only:[:edit, :show]
  before_action :movie_find, only: [:edit, :update, :destroy, :show]
  # before_action :move_to_index, except: [:index, :show, :search]

  def index
    @movies = Movie.includes(:user).order("created_at DESC")
  end

  def new
    @movie = Movie.new
  end
    
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    movie.destroy
  end

  def edit
  end

  def update
    movie.update(movie_params)
  end

  def show
  end

  def search
    @movies = Movie.search(params[:keyword])
  end

  private
  def movie_params
    params.require(:movie).permit(:image, :video, :name, :explanation, :category_id, :time_required_id).merge(user_id: current_user.id)
  end

  def set_tweet
    @movie = Movie.find(params[:id]) 
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def movie_find
    @movie = Movie.find(params[:id])
  end

end
