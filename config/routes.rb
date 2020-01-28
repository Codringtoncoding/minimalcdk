Rails.application.routes.draw do
  root to: 'pages#home'
  resources :issues, only: [ :index, :show ] do
    resources :comments, only: :create
  end
end

