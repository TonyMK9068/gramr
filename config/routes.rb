Gramr::Application.routes.draw do
  resources :messages, only: :create
  root :to => "welcome#index"
end
