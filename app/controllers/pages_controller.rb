class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index support forum form]

  def index    
  end
  
  def support
  end 

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :name)
  end

end