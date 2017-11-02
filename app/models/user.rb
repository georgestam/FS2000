class User < ApplicationRecord
  LANGUAGES = %w[ar en].freeze
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, email_format: { message: "doesn't look like an email address" }, presence: true
  validates :name, presence: true
  validates :locale, inclusion: LANGUAGES

  after_create :send_welcome_email
  after_create :subscribe_to_newsletter, if: :production_or_staging?
  
  def update_with_password(params={})
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    update_attributes(params)
  end

  private
  
  def admin?
    self.admin ? true : false
  end 
  
  def password_required?
    super if self.admin
  end

  def send_welcome_email
    Users::Creation::UserMailer.welcome(self.id).deliver_now
  end

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

end