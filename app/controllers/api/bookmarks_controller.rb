class Api::BookmarksController < ApplicationController

before_action :authenticate_user, only: [:index, :show, :create, :update, :destroy]
  def index
    @bookmarks = Bookmark.all
    render "index.json.jbuilder"
  end

  def create
    @bookmark = Bookmark.new(
      description: params[:description],
      url: params[:url],
      notes: params[:notes]
      category_id: params[:category_id]
      user_id: params[:user_id]
    )
    @bookmark.save
    render "show.json.jbuilder"
  end

  def show
    @bookmark = Bookmark.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @bookmark = Bookmark.find_by(id: params[:id])
    @bookmark.description = params[:description] || @bookmark.description
    @bookmark.url = params[:url] || @bookmark.url
    @bookmark.notes = params[:notes] || @bookmark.notes
    @bookmark.category_id = params[:category_id] || @bookmark.category_id
    @bookmark.user_id = params[:user_id] || @bookmark.user_id
    @bookmark.save
    render "show.json.jbuilder"
  end

  def destroy
    bookmark = Bookmark.find_by(id: params[:id])
    bookmark.destroy
    render json: {message: "Bookmark successfully destroyed."}
  end

end
