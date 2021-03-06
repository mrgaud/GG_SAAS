class ContactsController < ApplicationController
    def index
        @contacts=Contact.all
    end
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            name = params[:contact][:name]
            email = params[:contact][:email]
            comments = params[:contact][:comments]
            ContactMailer.contact_email(name, email, comments).deliver
            flash[:success] = "Message sent."
            redirect_to new_contact_path
        else 
            flash[:danger] = "An error occured."
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
    
end
