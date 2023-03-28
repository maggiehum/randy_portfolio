Rails.application.routes.draw do
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'concept_arts', to: 'concept_arts#index'
  get 'storyboards', to: 'storyboards#index'
  get 'personals', to: 'personals#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
