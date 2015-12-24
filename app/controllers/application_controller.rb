
class ApplicationController < ActionController::Base
  protect_from_forgery



private

# check that one or any of a series of records has expired, that is that the
# based on the creation date, any of the records are older than one hour
# if so, delete those records and return true indicating that records where deleted
#
# this is currently used for weather and tide info only

  def expired_check(recs)
  
    del = false
    recs.each do |r|
      created_at = r.created_at
      expire = created_at + 3600
     
      if Time.now > expire
       del = true
       r.destroy
      end
    end
    return del
  
  end  
  
  
  def set_regions
    @regions = Region.all
    @active_region = @regions.where(name: 'East Coast Buoys').first
    @active_region ||= @regions.first
  end  
  # the layout depends on if the access is from a cell phone or
  # regular browser. 
  
  def determine_layout
  # layout = 'main'
    #layout = 'ondieting_blue'
    #layout = 'basic_layout'
    layout = "top_bar"
    # regions are used in the layout
    
   
    @regions = Region.all
    
    
    return layout
  end
  


end
