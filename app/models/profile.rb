require 'net/http'

require 'profile_setup'

class Profile < ActiveRecord::Base
  include ProfileSetup
  has_many :station_joins 
  has_many :stations, :through => :station_joins
  has_many :regions, :through => :station_joins
  #belongs_to :region, :through => :station_joins

 
  
  def region_id
    res = nil
    if self.regions.length > 0
      res = regions.first.id
    end
    res
  end


  # get updated reports for all associated buoys
  
  def get_readings
    stations.each do |buoy|
      reading = nil
      buoy.readings.each do |read|
        if (read.created_at + 3600) > Time.now
        # reading is still fairly recent
          reading = read
        else 
        # remove old readings
#        puts "DELETE READING"
          buoy.readings.delete(read)  
          read.destroy
        end  
      end
      if (!reading)
 #     puts "GET DATA FROM BUOY \n"
      
        reading = Reading.new
        reading.parse(buoy.noaa_url)
        buoy.readings << reading
      
      end
    end
  
  end



  def get_surfcasts
    stations.each do |buoy|
      buoy.get_surfcasts(self.wave_models)
    end    
  
  end



  def add_buoy(buoy)
    stations << buoy
  end

end
