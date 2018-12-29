Rails.application.routes.draw do
 # get 'home/index'
get '/' => 'home#index'
#get '/' => 'article#index'
#get 'contacts' => 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#contacts
resource :contacts, only: [:new, :create], path_names: { :new => '' }
#resource :contacts, only: [:create]

#articles
get 'articles/new' => 'articles#new'
get 'articles' => 'articles#index'
#get 'articles' => 'articles#new'
resources :articles, only: [:new, :create, :show, :edit, :update], path_names: { :new => '' }

#about
resources :about

#terms
resources :terms

end #rails do



