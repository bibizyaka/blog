Rails.application.routes.draw do
 
devise_for :users

 # get 'home/index'
get '/' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "home#index"

#contacts
resource :contacts, only: [:new, :create] #, path_names: { :new => '' }
#resource :contacts, only: [:create]

#articles
get 'articles' => 'articles#index'
#resources :articles, only: [:new, :create, :show, :edit, :update, :destroy]#, path_names: { :new => '' }
resources :articles do 
    resource :comments, only: [:create, :show]
end
#terms
                #cont def
get 'terms' => 'pages#terms'

#about          #cont def
get 'about' => 'pages#about'

end #rails do



