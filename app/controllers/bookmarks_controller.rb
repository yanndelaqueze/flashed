class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_invader, only: [:new, :create]

  def new
    @invader = Invader.find(params[:invader_id])
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.invader = @invader
    @bookmark.user = current_user
    authorize @bookmark
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:flashed, :lat, :lng, :note, :address)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_invader
    @invader = Invader.find(params[:invader_id])
  end
end
