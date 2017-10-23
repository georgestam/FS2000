class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index coming_soon form]

  def index
    sign_out(current_user)
    @user = User.new
    @courses = Course.where(locale: I18n.locale).sort_by(&:date_start).last(4)
    # @articles = Article.where(locale: I18n.locale).last(4)
    # @stories = Story.where(locale: I18n.locale)
    
    @articles = Article.all.last(4)
    @stories = Story.all
    
    # text direction for index page only
    @dir = if I18n.locale == :ar
      "rtl"
    else 
      "ltr"
    end 
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