class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index coming_soon form]

  def index
  end
  
  def coming_soon
  end
  
  def form 
  end 

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :name)
  end

end