Rails.application.routes.draw do
  root 'main#home'
  get '/stephen' => 'main#stephen'
  get '/geovanna' => 'main#geovanna'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
