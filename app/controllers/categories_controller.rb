class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @notes = category.notes.order(created_at: :DESC)
    @note = Note.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      head :ok
    else
      render "categories/index", status: :unprocessable_entity
    end
  end

  private

  def categroy_params
    params.require(:categroy).permit(:name)
  end
end
