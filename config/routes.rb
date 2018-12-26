Rails.application.routes.draw do
 # get 'home/index'
get '/' => 'home#index'
#get 'contacts' => 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resource :contacts, only: [:new, :create], path_names: { :new => '' }
#resource :contacts, only: [:create]
resources :articles

end #rails do



