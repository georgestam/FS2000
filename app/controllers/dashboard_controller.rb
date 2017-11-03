class DashboardController < ApplicationController
  
  def tutorials
    authorize(current_user)
  end
  
  def downloads
    authorize(current_user)
  end
  
  def forum
    authorize current_user
  end
  
  def form 
    authorize current_user
  end 
  
end
