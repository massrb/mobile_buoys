# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#
#
# to reset:
# heroku pg:reset DATABASE

east_region = Region.find_or_create_by(:name => 'East Coast Buoys')
west_region = Region.find_or_create_by(:name => 'West Coast Buoys')

Profile.find_or_create_by(:name => 'Maine') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Portland Maine", :number => "44007")
  prof.stations << Station.find_or_create_by(:name => "Western Maine Shelf", :number => "44030")
  prof.stations << Station.find_or_create_by(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.find_or_create_by(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.find_or_create_by(:name => "Central Maine Shelf", :number => "44032")
  prof.stations << Station.find_or_create_by(:name => "Wells", :number => "welm1")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'NH') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Portland Maine", :number => "44007")
  prof.stations << Station.find_or_create_by(:name => "Boston Harbor", :number => "44013")
  prof.stations << Station.find_or_create_by(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.find_or_create_by(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.find_or_create_by(:name => "Isle of Shoals", :number => "iosn3")
  prof.stations << Station.find_or_create_by(:name => "Stellwagen Bank", :number => "44029")
	prof.stations << Station.find_or_create_by(:name => "Jeffrey's Ledge", :number => "44098")
	prof.stations << Station.find_or_create_by(:name => "Provincetown", :number => "44018")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'Florida') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Saint Augustine", :number => "41012")
  prof.stations << Station.find_or_create_by(:name => "Cape Canaveral", :number => "41009")
  prof.stations << Station.find_or_create_by(:name => "Canaveral East", :number => "41010")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'NE offshore') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Georges Bank", :number => "44011")
  prof.stations << Station.find_or_create_by(:name => "Gulf of Maine", :number => "44005")
  prof.stations << Station.find_or_create_by(:name => "Nantucket", :number => "44008")
  prof.stations << Station.find_or_create_by(:name => "SE Cape Cod", :number => "44018")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'Hatteras') do |prof|
  prof.stations << Station.find_or_create_by(:name => "East of Hatteras", :number => "41001")
  prof.stations << Station.find_or_create_by(:name => "Diamond Shoals", :number => "41025")
  prof.stations << Station.find_or_create_by(:name => "Virginia Beach", :number => "44014")
  prof.stations << Station.find_or_create_by(:name => "Frying Pan Shoals", :number => "41013")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'Rhode Island') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Nantucket", :number => "44008")
  prof.stations << Station.find_or_create_by(:name => "Long Island", :number => "44025")
  prof.stations << Station.find_or_create_by(:name => "Montauk", :number => "44017")
  prof.stations << Station.find_or_create_by(:name => "Buzzards Bay", :number => "buzm3")
  east_region.profiles << prof
end
Profile.find_or_create_by(:name => 'Nova Scotia') do |prof|
	prof.stations << Station.find_or_create_by(:name => "Halifax Harbor", :number => "44258")
  prof.stations << Station.find_or_create_by(:name => "Northeast Channel", :number => "44024")
  prof.stations << Station.find_or_create_by(:name => "La Have Bank", :number => "44150")
  prof.stations << Station.find_or_create_by(:name => "East Scotia Slope", :number => "44137")
  prof.stations << Station.find_or_create_by(:name => "Laurentian Fan", :number => "44141")
  east_region.profiles << prof
end


Profile.find_or_create_by(:name => 'Southern CA') do |prof|
  prof.stations << Station.find_or_create_by(:name => "Tanner Banks", :number => "46047")
  prof.stations << Station.find_or_create_by(:name => "Coronado Islands", :number => "46232")
  prof.stations << Station.find_or_create_by(:name => "Cape San Martin", :number => "46028")
  prof.stations << Station.find_or_create_by(:name => "Santa Monica Basin", :number => "46025")
  prof.stations << Station.find_or_create_by(:name => "Santa Barbara", :number => "46054")
  west_region.profiles << prof
end

