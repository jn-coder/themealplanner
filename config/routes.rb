Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'recipes#index', as: :signed_in_root
  end
  constraints Clearance::Constraints::SignedOut.new do
    root to: 'welcome#show'
  end
  resources :recipes
  resources :meal_plans
end
