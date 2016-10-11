Rails.application.routes.draw do
  resources :meals
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
	devise_scope :user do
  	get 'sign_in', to: 'users/sessions#new'
  	get 'sign_out', to: 'users/sessions#destroy'
  	get 'sign_up', to: 'users/registrations#new'
  	get 'edit',		 to: 'devise/registrations#edit'
	end 
	devise_for :users, controllers: { sessions: 'users/sessions' }
	resources :users
end
