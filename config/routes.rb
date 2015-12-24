MobileSurf::Application.routes.draw do
  resources :regions

  resources :profiles

  resources :stations

  get "buoy_map/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
  root :to => 'main#index'
  
  # match 'products/:id', :to => 'catalog#view'
  get 'main/index', :to => 'main#index'
	
	get 'main/profile/:id', :to => 'main#profile'
  get 'main/get_region/:id', :to => 'main#get_region'
  
  

# heroku is bombing on routes for some reason, comment out routes that
# are left over from surfcasts and scaffolding that are not currently used

=begin
  get 'weather/:name', :to => 'weather#show_weather'
  get 'tides/:name', :to => 'weather#show_tides'
  
  get 'weather/index'
  get 'adminbase/login'
  get 'profile_admin/index'
  get 'profile_admin/new'
  get 'profile_admin/list'
  get 'profile_admin/show'
  get 'profile_admin/edit'
  get 'profile_admin/destroy'
  get 'profile_admin/add_buoys'
  post 'profile_admin/update_add_buoys'
  
  post 'profile_admin/update'


  post 'profile_admin/create'
  
  get 'station_admin/index'
  get 'station_admin/new'
  
  get 'station_admin/show'
  get 'station_admin/edit'
  get 'station_admin/destroy'

  post 'station_admin/create'

  get 'station_admin/list'
  post 'station_admin/update'
  
  get "main/regions"
  get "main/region"
  get "main/reports"
  post 'adminbase/authorize'
  
  get "buoy_map/show_map"
  
  get "/admin", to: "admin#index"
  get "/buoy-data.json", to: "station_admin#index"
  
  
  get "/admin/templates/:path.html" => 'admin#page', :constraints => { :path => /.+/  }
  # Install the default route as the lowest priority.
=end	
#  map.connect ':controller/:action/:id.:format'
#  map.connect ':controller/:action/:id'
  
  
end
