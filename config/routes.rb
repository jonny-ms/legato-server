Rails.application.routes.draw do
  get 'courses/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    root to: 'teachers#index'
  
    resources :teachers, only: [:index, :create, :show]
    resources :students, only: [:index, :create]
    resources :lessons, only: [:index, :create]

    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    resources :timeslots, only: [:create, :index, :update, :destroy]
  end
end
