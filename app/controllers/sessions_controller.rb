class SessionsController < ApplicationController

	def new
	end

	def create
	  site_user = SiteUser.find_by_email(params[:email])
	  # If the user exists AND the password entered is correct.
	  if site_user && site_user.authenticate(params[:password])
	    # Save the user id inside the browser cookie. This is how we keep the user 
      	# logged in when they navigate around our website.
	    session[:site_user_id] = site_user.id
	    redirect_to '/'
	    #post 'site_user.id'
	  else
	  	# If user's login doesn't work, send them back to the login form.
	    redirect_to '/login'
	  end 
	end

	def destroy
		session[:site_user_id] = nil
		redirect_to '/login'
	end

end