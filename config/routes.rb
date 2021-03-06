Rails.application.routes.draw do
  scope "/api" do 
    get 'videos/random', to: "videos#random"
    resources :videos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "/auth" do
    post '/sign_up', to: 'users#create'
    post '/sign_in', to: 'users#sign_in'
  end
end
