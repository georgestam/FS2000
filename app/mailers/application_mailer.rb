# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base

  default from: 'fs2000@aes-uk.com'
  
  def self.inherited(subclass)
    subclass.default template_path: "mailers/#{subclass.name.to_s.underscore}"
    subclass.layout 'mailer'
  end

end