class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    Users::Creation::UserMailer.welcome(user).deliver_now
  end
end

# http://localhost:3000/rails/mailers/user_mailer/welcome

