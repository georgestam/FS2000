class TutorialPolicy < ApplicationPolicy
  
  def index?
    user
  end
    
end
