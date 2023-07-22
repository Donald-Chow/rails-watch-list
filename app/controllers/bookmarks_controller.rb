class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]

  # def new
  #   @bookmark = Bookmark.new
  #   @list = List.find(params[:list_id])
  #   @collection = Movie.all
  # end

  def create
    ## likely need debugging
    # @comment = bookmark_params[:comment]
    # @movie = Movie.find(bookmark_params[:movie])
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @movies = Movie.where.not(id: @list.movies).order(title: :asc)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render template: 'lists/show', status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    # likely need debugging
    params.require(:bookmark).permit(:comment, :movie_id, :wl1190_movie_id)
  end

  def set_bookmark
    # likely need debugging
    @bookmark = Bookmark.find(params[:id])
  end
end
