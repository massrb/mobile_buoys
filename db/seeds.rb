# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.first_or_create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.first_or_create(:name => 'Daley', :city => cities.first)

east_region = Region.first_or_create(:name => 'East Coast Buoys')
west_region = Region.first_or_create(:name => 'West Coast Buoys')

Profile.first_or_create(:name => 'Maine') do |prof|
  prof.stations << Station.first_or_create(:name => "Portland Maine", :number => "44007")
  prof.stations << Station.first_or_create(:name => "Western Maine Shelf", :number => "44030")
  prof.stations << Station.first_or_create(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.first_or_create(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.first_or_create(:name => "Central Maine Shelf", :number => "44032")
  prof.stations << Station.first_or_create(:name => "Wells", :number => "welm1")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'NH') do |prof|
  prof.stations << Station.first_or_create(:name => "Portland Maine", :number => "44007")
  prof.stations << Station.first_or_create(:name => "Boston Harbor", :number => "44013")
  prof.stations << Station.first_or_create(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.first_or_create(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.first_or_create(:name => "Isle of Shoals", :number => "iosn3")
  prof.stations << Station.first_or_create(:name => "Stellwagen Bank", :number => "44029")
	prof.stations << Station.first_or_create(:name => "Jeffrey's Ledge", :number => "44098")
	prof.stations << Station.first_or_create(:name => "Provincetown", :number => "44018")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'Florida') do |prof|
  prof.stations << Station.first_or_create(:name => "Saint Augustine", :number => "41012")
  prof.stations << Station.first_or_create(:name => "Cape Canaveral", :number => "41009")
  prof.stations << Station.first_or_create(:name => "Canaveral East", :number => "41010")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'NE offshore') do |prof|
  prof.stations << Station.first_or_create(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.first_or_create(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.first_or_create(:name => "Nantucket", :number => "44008")
  prof.stations << Station.first_or_create(:name => "SE Cape Cod", :number => "44018")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'Hatteras') do |prof|
  prof.stations << Station.first_or_create(:name => "East of Hatteras", :number => "41001")
  prof.stations << Station.first_or_create(:name => "Diamond Shoals", :number => "41025")
  prof.stations << Station.first_or_create(:name => "Virginia Beach", :number => "44014")
  prof.stations << Station.first_or_create(:name => "Frying Pan Shoals", :number => "41013")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'Rhode Island') do |prof|
  prof.stations << Station.first_or_create(:name => "Nantucket", :number => "44008")
  prof.stations << Station.first_or_create(:name => "Long Island", :number => "44025")
  prof.stations << Station.first_or_create(:name => "Montauk", :number => "44017")
  prof.stations << Station.first_or_create(:name => "Buzzards Bay", :number => "buzm3")
  east_region.profiles << prof
end
Profile.first_or_create(:name => 'Southern CA') do |prof|
  prof.stations << Station.first_or_create(:name => "Tanner Banks", :number => "46047")
  prof.stations << Station.first_or_create(:name => "Coronado Islands", :number => "46232")
  prof.stations << Station.first_or_create(:name => "Cape San Martin", :number => "46028")
  prof.stations << Station.first_or_create(:name => "Santa Monica Basin", :number => "46025")
  prof.stations << Station.first_or_create(:name => "Santa Barbara", :number => "46054")
  west_region.profiles << prof
end

