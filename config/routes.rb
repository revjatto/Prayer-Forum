Rails.application.routes.draw do

  devise_for :users
  get 'comments/new'

  get 'comments/edit'

resources :posts do
  resources :comments
end


root "posts#index"

end
