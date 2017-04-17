 Rails.application.routes.draw do
 	namespace :admin do
 		get 'dashboard/main'
 		get 'dashboard/user'
 		get 'dashboard/blog'
 	end
 	get 'about', to: 'pages#about'
 	get 'hello', to: 'pages#contact'

 	resources :blogs
 	resources :posts

 	get 'posts/*missing', to: 'posts#missing'
 	root to: 'pages#home'
 	get 'query/:else/:another_one', to: 'pages#something'

 	root 'pages#home'

 end