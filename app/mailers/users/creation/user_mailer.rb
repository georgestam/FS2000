module Users
  module Creation
    class UserMailer < ApplicationMailer
      
      def welcome(user_id)
        @user = User.find(user_id)
        welcome = t '.welcome'
        mail(
          to:       @user.email,
          subject:  "#{welcome} #{@user.name.capitalize}!"
        )
      end 
      
    end
  end
end 