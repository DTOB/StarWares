Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'products' => 'products#index', as: 'products'

  post 'products' => 'products#index'

  get 'products/:id' => 'products#show', as: 'product', id: /\d+/

  post 'products/:id' => 'cart#show'

  get 'customer_login' => 'customer_login#index'

  get 'customer_login/:id' => 'customer_login#create', as: 'customer', id: /\d+/

  get 'about' => 'about#about'

  #get 'contact' => 'contact#contact'

  post 'logout' => 'customer_login#destroy'

  post 'search' => 'products#search'

  post 'jedi' => 'products#jedi'

  post 'search_jedis' => 'products#search_jedis'

  get 'contacts' => 'contacts#new'

  get 'sort_price_high_low' => 'products#sort_price_high_low'

  get 'sort_price_low_high' => 'products#sort_price_low_high'

  get 'sort_model_a_z' => 'products#sort_model_a_z'

  get 'sort_model_z_a' => 'products#sort_model_z_a'

  resources "contacts", only: [:new, :create]

  # resources :orders

  # resources :line_items

  # resources :products

  # resources :provinces
  # resources :customers

  root 'welcome#index'

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
