class NoteLogiccsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  
  def create
    @note = current_user.note.build(note_params)
    if @note.save
      flash[:succes] = "Note created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private
  def notec_params
     params.require(:note).permit(:content)
  end     
end
