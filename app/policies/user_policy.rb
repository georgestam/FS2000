class UserPolicy < ApplicationPolicy
  
  def tutorials?
    user
  end
  
  def downloads?
    user
  end
  
  def forum?
    user
  end
  
  def form?
    user
  end
    
end
