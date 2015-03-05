Rails.application.routes.draw do
  get '/contact' => 'users#new'
  post '/contact' => 'users#create'
end
