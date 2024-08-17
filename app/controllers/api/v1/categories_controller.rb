class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category.as_json(include: :products)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Category Not Found" }, status: :not_found
  end
end