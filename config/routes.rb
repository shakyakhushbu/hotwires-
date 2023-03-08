Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "authors#index"
  resources :authors
  resources :books
  get '/author/turbo_frame_form' => 'authors#turbo_frame_form', as: 'turbo_frame_form'
  post '/author/turbo_frame_submit' => 'authors#turbo_frame_submit', as: 'turbo_frame_submit'

  post '/book/post_something' => 'books#post_something', as: 'post_something'

end
