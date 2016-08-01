Rails.application.routes.draw do
  #constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :users
        devise_for :users
        resources :categories do
          resources :products
        end
      end
    end
  # end
end
