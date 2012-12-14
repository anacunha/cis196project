class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def profile
    @user = current_user
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end
