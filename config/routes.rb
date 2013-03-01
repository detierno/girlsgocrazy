GirlsGoCrazy::Application.routes.draw do

  resources :events do
    resources :items
  end

  resources :events do
    resources :topics do
      resources :messages
    end
  end

  devise_for :users

  root :to => 'events#index'
end
