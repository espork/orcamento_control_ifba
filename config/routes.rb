OrcamentoControlIfba::Application.routes.draw do
  
  resources :resources do
    
    resources :transfers
    
    resources :efforts do
      resources :payments
    end
  end
  
  resources :budgets

  resources :natures

  resources :units
  root :to => "home#index"
  
end
