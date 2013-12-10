Contacts::Application.routes.draw do
  resources :employees
  resource :session, :only => [:new, :create, :destroy]
  
  root :to => "root#root"
end
