Scoreboard::Application.routes.draw do
  # To get a list of all valid routes your app can respond to
  # rake routes
  
  root :to => 'score_boards#new'

  # resources :score_boards will automatically create routes for all restful actions
  # match will match a particular URL to an action
  # example: match '/faq', controller: :faqs, action: :index
  # you can sepcify the request by its action
  get '/score_boards/new' => 'score_boards#new', :as => :new_score_board
  post '/score_boards' => 'score_boards#create'
  get '/score_boards/:id' => 'score_boards#show', :as => :score_board
  get '/players/new' => 'players#new', :as => :new_player
  post '/players' => 'players#create'
  put '/score_cards/:id' => 'score_cards#update', :as => :score_card

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
