OrcamentoControlIfba::Application.routes.draw do

  devise_for :users

  resources :resources do
    
    get :detail, :to => "resources#detail"
    
    resources :devolutions
    
    resources :transfers do
      
      resources :devolution_transfers
      
      resources :effort_transfers do
        resources :payment_transfers
      end
    end
    
    resources :efforts do
      resources :payments
    end
  end
  
  resources :budgets

  resources :natures

  resources :units
  root :to => "home#index"
  
end
