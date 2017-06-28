class StaticPagesController < ApplicationController
  def home
    @loginote = current_user.loginotes.build if logged_in?
  end
end
