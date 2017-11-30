Rails.application.routes.draw do

  root to: "pages#accueil"


  get 'accueil' => 'pages#accueil'
  get 'restaurant' => 'pages#restaurant'
  get 'menu' => 'pages#menu'
  get 'produits' => 'pages#produits'
  get 'recettes' => 'pages#recettes'
  get 'contact' => 'pages#contact'

  get '*path' => redirect('/')

end
