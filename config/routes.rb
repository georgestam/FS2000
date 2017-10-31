Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  scope '(:locale)', locale: /en|es/ do
  
    root to: 'pages#index'

    get "/coming_soon", to: "pages#coming_soon", as: :coming_soon
    
    get "/form", to: "pages#form", as: :form
    
    get "/support", to: "pages#support", as: :support
    
    resources :pages, only: %i[index] 
  
    resources :articles, only: %i[index show]
    
    resources :stories, only: %i[index show]
    
    # dashboard
    get "/tutorials", to: "dashboard#tutorials", as: :tutorials
  
  end
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
