class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index support coming_soon form]

  def index
    if user_signed_in?
      redirect_to controller: :dashboard, action: :tutorials
    end    
  end
  
  def support
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