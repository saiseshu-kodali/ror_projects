class AdminController < ApplicationController
   def login
	if request.post?
	    if params[:admin][:name] == "admin" && params[:admin][:password]=="12345"
	       session[:admin]="admin"
		   flash[:notice]="Login Succesful"
		   redirect_to :controller=>"actors"
		else
		   flash[:notice]="Username or Password Doesn't match. Try Again"
		   render :action=>"login"
		end
		   
    end
   end


def logout
    session[:admin]=nil
	flash[:notice]="you are logged out"
	render :action=>"login"
end

end
