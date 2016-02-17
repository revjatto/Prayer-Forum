Rails.application.routes.draw do

  devise_for :admins
  get 'pages/prayer'
  get 'pages/confession'
  devise_for :users
  get 'comments/new'

  get 'comments/edit'

resources :posts do
  resources :comments
end


root "posts#home"

end
