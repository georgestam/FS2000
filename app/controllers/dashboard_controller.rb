class DashboardController < ApplicationController
  
  def tutorials
    authorize(current_user)
  end
  
end
