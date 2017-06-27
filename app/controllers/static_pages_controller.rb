class StaticPagesController < ApplicationController
  def home
    @note = current_user.notes.build if logged_in?
  end
end
