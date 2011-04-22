Rails.application.routes.draw do
  
  get "/press" => "press#index"
  
  namespace :admin do
    resources :press, :path_names => { :index => "index" } do
      resources :images, :controller => "press_images"
    end
  end

end
