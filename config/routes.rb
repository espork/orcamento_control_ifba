OrcamentoControlIfba::Application.routes.draw do

  resources :resources do
    
    get :detail, :to => "resources#detail"
    
    resources :transfers do
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
