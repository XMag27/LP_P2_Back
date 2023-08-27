Rails.application.routes.draw do
  resources :comentarios
  resources :zonas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #crea la ruta /nuevoDelito
  get '/nuevo_delito/:id' => 'zonas#sumarDelito'
  get '/nuevo_asesinato/:id' => 'zonas#sumarAsesinato'
  get '/total' => 'zonas#total'
  

end
