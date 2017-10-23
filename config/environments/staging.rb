# frozen_string_literal: true

require_relative 'production_or_staging'

Rails.application.configure do
  config.action_mailer.raise_delivery_errors = false
end
