class LoginotesController < ApplicationController
 before_action :logged_in_user, only: [:create]
 
 def create
   @loginote = current_in_user.loginotes.build(loginote_params)
   if @loginote.save
       flash[:success] = "Loginote created"
       redirect_to root_url
   else
       render 'static_pages/home'
   end
 end
 
 private
 def loginote_params
    params.require(:loginote).permite(:content)
 end  
end
