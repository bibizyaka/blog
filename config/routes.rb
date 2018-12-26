Rails.application.routes.draw do
 # get 'home/index'
get '/' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resource :contacts, only: [:new, :create]

resources :articles
#resources :contacts


#get 'contacts/new'
#get 'contacts' => 'contacts#new'

#post 'contacts/create'

end #rails do



