# frozen_string_literal: true

def development?
  Rails.env.development?
end

def test?
  Rails.env.test?
end

def production?
  Rails.env.production?
end

def staging?
  !production? && !test? && !development?
end

def development_or_test?
  development? || test?
end

def production_or_staging?
  staging? || production?
end

def ci?
  [ENV['CODESHIP'], ENV['CI']].any? &:present?
end
