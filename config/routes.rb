Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'

  namespace :api do
    resources :beers, only: [:index, :show, :create]
  end

  # Routes for user
  get "users" => "users#index" 
  # get "users/:id" => "users#show", as: :user
  get "signup" => "users#new"
  post "users" => "users#create"
  get "users/:id/edit" => "users#edit", as: :edit_user
  put "users/:id" => "users#update" 
  patch "users/:id" => "users#update" 

  # # Routes for logging in and out (sessions)
  get "login" => "sessions#new" 
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

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

resources :beers
resources :styles

resources :brewers

get "brewers/" => "brewers#index" 
get "brewers/new" => "brewers#new" 
get "brewers/:id" => "brewers#show" #, as: :post
post "brewers/" => "brewers#create"
get "brewers/:id/edit" => "brewers#edit" #, as: :edit_post
post "brewers/:id/edit" => "brewers#update"
patch "brewers/:id" => "brewers#update"
delete "brewers/:id" => "brewers#destroy"
	
end
