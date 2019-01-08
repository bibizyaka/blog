class ContactsController < ApplicationController
   def new
   end

   def create

     #render plain: params[:contact]
     
     @contact = Contact.new(contact_params)
     #render plain: @contact
     
     if @contact.save
        redirect_to '/contacts', :notice => "Message Sent!"
    else
        render action: 'new'
    end

   end #create

   private
      def contact_params
         
          params.require(:contact).permit(:email, :text) 

      end


end #class
