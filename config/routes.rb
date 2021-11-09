Rails.application.routes.draw do
  
  
 
  
  
   
   devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    passwords: "users/passwords", 
    omniauth_callbacks: "omniauth_callbacks"
  }

  get "tops/index", to:"tops#index"
  get "tops/terms", to:"tops#terms"
  get "tops/policy", to:"tops#policy"
  

  get "post/index", to:"post#index"  #案件一覧表示
  get "post/:id", to:"post#show"  #案件詳細ページ表示
  get "post/:id/comments", to:"comments#show"

 resources :providers do
    resources :comments, only: :create
  end

  get "comments/index", to:"provider#index"
  get "comments/new", to:"comments#new"
  post "comments/create", to:"comments#create"
  post "post/create", to:"post#create"
  post "providers/:id", to:"comments#create"

  get "test/index", to:"test#index"
  get "test/:id", to:"test#show"

  get "users/index", to:"users#index"
  get "users/home", to:"users#home"


  get "providers/index", to:"providers#index"
  get "providers/new", to:"providers#new"
  post "providers/new", to:"providers#create" 
  get "providers/:id", to:"providers#show"
  get "providers/:id/edit", to:"providers#edit"
  post "providers/:id/edit", to:"providers#update"
  post "providers/:id/destroy", to:"providers#destroy"
 
  

  


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
