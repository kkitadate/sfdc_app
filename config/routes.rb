Rails.application.routes.draw do
  get '/', to: 'root#index'
  get '/accounts', to: 'accounts#index'
end
