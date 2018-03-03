Rails.application.routes.draw do
  get 'student/new'

  get 'student/create'

  get 'student/index'

  get 'student/show'

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
      get '/about-sims', to: 'welcome#index', as: 'about'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
