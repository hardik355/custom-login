Rails.application.routes.draw do

  # resources :registers do
    # root to: 'session#new'
  # end

  resources :registers
  
  resources :session do
    root to: 'session#new'
  end

end
