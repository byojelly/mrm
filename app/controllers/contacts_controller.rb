class ContactsController < ApplicationController
      before_action :set_contact, only:[:show, :edit, :update]
    def show
    end
    def edit
      require_logged_in #located in applicationcontroller
    end
    def update
        if @contact.update(contact_params)
            redirect_to contact_path(@contact)
        else
            render 'edit'
        end
    end

  private
    def set_contact
        @contact = Contact.find_by(id: params[:id])
    end
    def contact_params
      params.require(:contact).permit(:name, :address, :city, :state, :zip, :phone)
    end
end
