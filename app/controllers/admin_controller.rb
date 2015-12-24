
# move admin functionality to angular

class AdminController < ApplicationController
  layout :set_layout
  
  def set_layout
    'bootstrap'
  end
  
  def index
    @heading = "Offshore Buoy Administration"
    
  end
  
  def page 
    render :template => 'admin/templates/' + params[:path], :layout => false
  end

end