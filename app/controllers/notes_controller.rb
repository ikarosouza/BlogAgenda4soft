class NotesController < ApplicationController
	def create
	    @contact = Contact.find(params[:contact_id])
	    @note = @contact.notes.create(note_params)
	    redirect_to contact_path(@contact)
  	end

  def destroy
    @contact =Contact.find(params[:contact_id])
    @note = @contact.notes.find(params[:id])
    @note.destroy
    redirect_to contact_path(@contact)
  end
 
  private
    def note_params
      params.require(:note).permit(:text)
    end
end
