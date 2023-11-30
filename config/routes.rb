Rails.application.routes.draw do
  get '/' => 'users#login_form'
  get 'users/:id' => 'users#show'

  get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
