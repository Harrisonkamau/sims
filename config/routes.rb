Rails.application.routes.draw do
  get 'courses/index'

  get 'courses/new'

  get 'courses/show'

  get 'courses/edit'

  devise_for :user
  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
      resources 'students' do
        get 'new'
        post 'new'
        get 'show'
        get 'index'
      end

      resources 'attendances'
      post 'attendances/new' => 'attendances#create'

      resources 'courses'
      post 'courses/new' => 'courses#create'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
