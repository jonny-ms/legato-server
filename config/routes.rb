Rails.application.routes.draw do
  get 'courses/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    root to: 'teachers#index'
  
    resources :teachers
    resources :courses
    # resources :students, only: [:index]

    resources :sessions, only: [:create]
  end
end
