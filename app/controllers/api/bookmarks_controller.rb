class Api::BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    render "index.json.jbuilder"
  end

  def create
    @bookmark = Bookmark.new(
      category: params[:category],
      name: params[:name],
      url: params[:url]
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
    @bookmark.category = params[:category] || @bookmark.category
    @bookmark.name = params[:name] || @bookmark.name
    @bookmark.url = params[:url] || @bookmark.url
    @bookmark.save
    render "show.json.jbuilder"
  end

  def destroy
    bookmark = Bookmark.find_by(id: params[:id])
    bookmark.destroy
    render json: {message: "Bookmark successfully destroyed."}
  end

end
