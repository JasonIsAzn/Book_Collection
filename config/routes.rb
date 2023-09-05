Rails.application.routes.draw do
  resources :books do
    member do
      get :delete
    end
  end

end
