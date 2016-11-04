Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
 resources :messages do 
 	resources :comments
 end


 root 'messages#index'
end
