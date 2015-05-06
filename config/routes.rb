Rails.application.routes.draw do
<<<<<<< HEAD
  resources :beers
  resources :styles
=======

resources :brewers

get "brewers/" => "brewers#index" 
get "brewers/new" => "brewers#new" 
get "brewers/:id" => "brewers#show" #, as: :post
post "brewers/" => "brewers#create"
get "brewers/:id/edit" => "brewers#edit" #, as: :edit_post
post "brewers/:id/edit" => "brewers#update"
patch "brewers/:id" => "brewers#update"
delete "brewers/:id" => "brewers#destroy"
	
>>>>>>> f30dc7f94aa1d27859bfcf4685d0a6a0494783df
end
