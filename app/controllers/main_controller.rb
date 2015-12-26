class MainController < ApplicationController

  layout :determine_layout
  # helper :main
  after_filter :cors_set_access_control_headers
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  # site home page
  def index
    get_react_data
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

  def region
    region = Region.find params[:id]
    get_react_data(region: region)
    render 'index'
  end

  private

  def get_react_data(attr={})
    @regions = Region.all
    @active_region = attr[:region]
    @profile = attr[:profile]

    @active_region ||= @profile.regions.first if @profile
    @active_region ||= Region.all.first

    @profiles = @active_region ? @active_region.profiles : Profile.all
    @profile ||= @active_region.profiles.first
    @profile.get_readings
    stations = []
    @profile.stations.each do |station|
      stat = station.attributes
      stat["readings"] = station.readings.first.attributes
      stations << stat
    end

    # objext react worls with
    @prof = {
      profiles: @profiles,
  		regions: @regions,
  		active_region: @active_region,
  		profile: @profile,
  		stations: stations
			}
  end

end
