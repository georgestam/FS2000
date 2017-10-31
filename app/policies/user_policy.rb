class UserPolicy < ApplicationPolicy
  
  def tutorials?
    user
  end
    
end
