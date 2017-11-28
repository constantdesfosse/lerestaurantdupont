Rails.application.routes.draw do

  root to: "pages#accueil"

  get 'pages/accueil'

  get 'pages/restaurant'

  get 'pages/menu'

  get 'pages/produits'

  get 'pages/recettes'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
