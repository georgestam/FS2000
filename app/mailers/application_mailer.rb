# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base

  default from: 'contact@fs2000.com'
  
  def self.inherited(subclass)
    subclass.default template_path: "mailers/#{subclass.name.to_s.underscore}"
    subclass.layout 'mailer'
  end

end