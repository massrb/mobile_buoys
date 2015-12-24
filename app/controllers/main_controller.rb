

class MainController < ApplicationController

  layout :determine_layout
  before_filter :set_regions, except: :index3
  helper :main
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = "1728000"
  end
  
 

  # site home page
  def index
		if params[:update]
			get_remote_data
		else
      get_react_data
		end	
  end
	
	def profile
		if params[:update]
			get_remote_data
		else
			profile = Profile.find params[:id]
		  get_react_data(profile: profile)
		  render 'index'
		end	
		
	end

  def get_region
		region = Region.find params[:id]
		get_react_data(region: region)
		p @active_region
		render 'index'
	end




	
	private
	
	 def get_react_data(attr={})
		  @active_region = attr[:region] 
			@profile = attr[:profile]
			
			@active_region ||= @profile.regions.first if @profile
			@active_region ||= Region.all.first
			
			
			@profiles = @active_region ? @active_region.profiles : Profile.all
			@profile ||= @active_region.profiles.first
			puts "PROFILE:" + @profile.inspect
			puts "profiles:" + @profiles.length.to_s
			@profile.getReadings
			stations = []
			@profile.stations.each do |station|
				 stat = station.attributes
				 stat["readings"] = station.readings.first.attributes
				 stations << stat
			end
			@prof = {
				profiles: @profiles,
				regions: @regions,
				active_region: @active_region,
				profile: @profile,
				stations: stations
			}
	 end

end
