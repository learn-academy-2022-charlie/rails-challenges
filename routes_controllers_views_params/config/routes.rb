Rails.application.routes.draw do
  root 'main#home'
  get '/stephen' => 'main#stephen'
  get '/geovanna' => 'main#geovanna'
  get '/cubed/:number1' => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlib/:noun/:verb/:adverb/:adjective' => 'main#madlib'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
