class RegistrationsController < Devise::RegistrationsController

  # def after_sign_up_path_for(resource)
  #   form_url
  # end
  
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation).merge(locale: I18n.locale)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
