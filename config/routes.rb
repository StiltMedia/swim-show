Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'

  get '/swimshow' => 'pages#swimshow'
  get '/show-dates' => 'pages#showdates'
  get '/special-events' => 'pages#special-events'
  get '/exhibitors' => 'pages#exhibitors'
  get '/retailers' => 'pages#retailers'
  get '/media' => 'pages#media'
  get '/travel' => 'pages#travel'
  get '/nightlife' => 'pages#nightlife'
  get '/restaurants' => 'pages#restaurant'
  get '/current-lines' => 'pages#currentlines'
  # get '/retailer-registration' => 'pages#vregistration'
  get '/media-registration' => 'pages#mediaregistration'
  get '/gallery' => 'pages#vgallery'
  get '/classifieds' => 'pages#classifieds'
  get '/west-coast-regional' => 'pages#westcoastregional'
  get '/west-coast-lines' => 'pages#westcoastlines', as: :wc_lines
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/thanks' => 'pages#thanks'
  get '/coming-soon' => 'pages#coming-soon'
  get '/floor-plans', to: redirect('https://s3.amazonaws.com/swim-show/FLOOR+PLAN+2015-01.pdf'), as: :floor_plans

  # post '/retailer-registration' => 'pages#create_vendor', as: :vendor_registrations
  post '/media-registration' => 'pages#create_media', as: :media_registrations
  post '/contact' => 'pages#create_contact', as: :contacts
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
