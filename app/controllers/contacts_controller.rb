class ContactsController < ApplicationController
      before_action :set_contact, only:[:show, :edit, :update]

    def show
#binding.pry
    end
    def edit
      require_logged_in
    end
    def update
  #  binding.pry
        if @contact.update(contact_params)
  #  binding.pry
            redirect_to contact_path(@contact)
        else
            render 'edit'
        end
    end


private
    def require_logged_in
        if current_user.id != params[:id].to_i
              redirect_to contact_show_path
        end
    end
    def set_contact
      #binding.pry
      @contact = Contact.find_by(id: params[:id])
    end
    def contact_params
      params.require(:contact).permit(:name, :address, :city, :state, :zip, :phone)
    end
end
