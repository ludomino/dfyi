class NotesController < ApplicationController
  def create
    @note = Note.new(note_params)
    @category = Category.find(params[:category_id])
    if @note.save
      head :ok
    else
      render "category/show", status: :unprocessable_entity
    end
  end

  private

  def note_params
    params.require(:note).permit(:name, :content)
  end
end
