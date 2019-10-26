Rails.application.routes.draw do

  root to: "pages#accueil"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  get 'accueil' => 'pages#accueil'
  get 'restaurant' => 'pages#restaurant'
  get 'menu' => 'pages#menu'
  get 'boncadeau' => 'pages#boncadeau'
  # get 'recettes' => 'pages#recettes'
  get 'contact' => 'pages#contact'
  # get 'test' => 'pages#test'

  get '*path' => redirect('/')

end
