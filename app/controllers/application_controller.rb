
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
  
  
  
  def determine_layout
    layout = "top_bar"
    return layout
  end
  


end
