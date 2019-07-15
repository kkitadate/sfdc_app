Rails.application.routes.draw do
  get '/', to: 'root#index'
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :accounts, only: [:index, :show, :edit, :update]
    end
  end
end
