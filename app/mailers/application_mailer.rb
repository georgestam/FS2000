# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base

  default from: 'rakan@starfishproject.ae'
  
  def self.inherited(subclass)
    subclass.default template_path: "mailers/#{subclass.name.to_s.underscore}"
    subclass.layout 'mailer'
  end

end