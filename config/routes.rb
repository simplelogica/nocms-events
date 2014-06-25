NoCms::Events::Engine.routes.draw do
  resources :events, only: [:index, :show]
end
