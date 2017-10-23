class Course < ApplicationRecord
  
  LANGUAGES = %w[ar en].freeze
  
  validates :date_start, presence: true
  validates :date_finish, presence: true
  validates :time_start, presence: true
  validates :location, presence: true
  validates :locale,  inclusion: { in: LANGUAGES, allow_nil: false }
  
  validate :date_finish_cannot_be_earlier_than_date_start
  
  private
  
  def locale_enum
     %w[ar en]
  end
  
  def date_finish_cannot_be_earlier_than_date_start
    if self.date_finish <= self.date_start 
      errors[:date_finish] = "cannot be earlier than the date start"
    end 
  end
  
end