class AdminsController < ApplicationController
    def index
        
    end

    def create
        admin = Admin.create(name: params["full_name"], email: params["email"], password_digest: params["password"])
        if admin.save
          session[:admin_id] = admin.id
          redirect_to '/movies'
        else
          flash[:register_errors] = admin.errors.full_messages
          redirect_to '/signup_page'
        end  
    end
end
