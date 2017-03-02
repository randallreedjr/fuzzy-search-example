Rails.application.routes.draw do
  resources :people
  resources :people do
    collection do
      get 'search'
    end
  end

  root 'people#index'
end
