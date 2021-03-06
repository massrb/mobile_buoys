 
 module ProfileSetup
 
		# this is called from the setup script.
		# it finds all of the buoys that have a 
		# description string that appears to indicate
		# it is offshore for the given state etc.
		# thus if the profile is for
		# new england, the states passed might be [:me, :ma, :nh]
		# 
		# The description string stored in the
		# buoy record came from the NOAA buoy web site
		# 
		
		
		def find_by_state(states)
			states = [states] if states.class != Array
						
			Station.find(:all).each do |station|
				states.each do |state|
				
					if state.length == 2
						state_name = state.to_s.upcase
					else
						state_name = state.to_s.capitalize
					end
		
					# we have [space, comma] <STATE> [space, period, end_of_string]    
					pat = /\s#{state_name}\s/
					pat2 = /\s#{state_name}$/
					pat3 = /,#{state_name}$/
					pat4 = /,#{state_name}\s/
					pat5 = /,#{state_name}\./
					pat6 = /\s#{state_name}\./  
					if pat.match(station.description) or 
						pat2.match(station.description) or
						pat3.match(station.description) or
						pat4.match(station.description) or
						pat5.match(station.description) or
						pat6.match(station.description)
							# puts 'found!!!'       
							self.stations << station
					end  
				end
			end
			 
		end				
end				