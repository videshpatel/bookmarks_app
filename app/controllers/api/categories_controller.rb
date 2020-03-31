class Api::CategoriesController < ApplicationController
  before_action :authenticate_user, only: [:index, :show, :create, :update, :destroy]
  def index
    @categorys = Category.all
    render "index.json.jbuilder"
  end

  def create
    @category = Category.new(

      name: params[:name],
      user_id: params[:user_id]
    )
    @category.save
    render "show.json.jbuilder"
  end

  def show
    @category = Category.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @category = Category.find_by(id: params[:id])

    @category.name = params[:name] || @category.name
    @category.user_id = params[:user_id] || @category.user_id
    @category.save
    render "show.json.jbuilder"
  end

  def destroy
    category = Category.find_by(id: params[:id])
    category.destroy
    render json: {message: "Category successfully destroyed."}
  end

end
