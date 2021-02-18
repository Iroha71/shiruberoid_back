class CategoryController < ApplicationController
  before_action :authenticate_user!
  def create
    @category = Category.new(get_category_params())
    @category.save!

    render status: :ok, json: @category
  end

  def index
    @categories = Category.where(user_id: @current_user.id)

    render status: :ok, json: @categories
  end

  private
    def get_category_params()
      params.require(:category).permit(:name).merge(user_id: @current_user.id)
    end
end
