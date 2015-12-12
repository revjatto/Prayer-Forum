Rails.application.routes.draw do

  get 'pages/prayer'
  get 'pages/confession'
  devise_for :users
  get 'comments/new'

  get 'comments/edit'

resources :posts do
  resources :comments
end


root "posts#index"

end
