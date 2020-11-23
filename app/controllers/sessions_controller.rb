class SessionsController < ApplicationController
    def index
    end

    def create
        admin = Admin.find_by(email: params["email"])
        if admin && admin.password_digest === params[:password]
            redirect_to '/movies'
        else
            flash[:login_errors] = ['invalid credentials']
            redirect_to '/'
        end
    end
end
