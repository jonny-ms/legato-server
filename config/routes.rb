Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    root to: 'teachers#index'
  
    resources :teachers
    # resources :students, only: [:index]

    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
  end
end
