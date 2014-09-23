class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end
	
	def new
    @contact = Contact.new
	end

	def show
		@contact = Contact.find(params[:id])
	end

  def edit
    @contact = Contact.find(params[:id])
  end

	def create
		@contact = Contact.new(contact_params)

  	if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
	end

	private
		def contact_params
			params.require(:contact).permit(:name, :phone, :email, :adress)
		end

end

