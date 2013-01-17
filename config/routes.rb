GirlsGoCrazy::Application.routes.draw do

  resources :topics do
    resources :messages
  end

  devise_for :users

  root :to => 'topics#index'
end
