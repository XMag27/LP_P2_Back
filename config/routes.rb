Rails.application.routes.draw do
  resources :reportes
  resources :comentarios
  resources :zonas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #crea la ruta /nuevoDelito
  get '/sumar_asesinato/:id/:cantidad' => 'zonas#sumarAsesinato'
  get '/total' => 'zonas#total'
  #Crea la ruta sumardelito
  

end
