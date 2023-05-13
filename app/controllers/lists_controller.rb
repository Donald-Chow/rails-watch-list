class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    set_list
    @bookmark = Bookmark.new
    @movies = Movie.where.not(id: @list.movies).order(title: :asc)
  end

  # def new
  #   @list = List.new
  # end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
