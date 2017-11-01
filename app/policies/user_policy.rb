class UserPolicy < ApplicationPolicy
  
  def tutorials?
    user
  end
  
  def downloads?
    user
  end
    
end
