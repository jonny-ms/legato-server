Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    root to: 'teachers#index'
  
    resources :teachers, only: [:index, :create]
    resources :students, only: [:create]
    resources :lessons, only: [:create]

    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    resources :timeslots, only: [:create, :index]
  end
end
