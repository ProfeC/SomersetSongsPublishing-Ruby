Rails.application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  # NOTE: Devise Routes
  # devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :users, path: "authorize", path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'cmon_let_me_in'
  }

  # NOTE: Mount RailsAdmin
  mount RailsAdmin::Engine => '/backoffice', as: 'rails_admin'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'application#index'

  # get '/' => 'application#index'
  # get 'index' => 'application#index'
  get 'about' => 'application#about'
  # get 'contact' => 'application#contact'
  get 'solicit' => 'application#solicit'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # NOTE: Artist Resources
  # get 'artists/:name' => 'artists#show_by_name'
  resources :artists

  # NOTE: Song Resources
  get 'songs/filter' => 'songs#filter'
  resources :songs

  # NOTE: Album Resources
  resources :albums

  # NOTE: Genre Resources
  resources :genres
  # get 'genre/show'
  # get 'genre/index'
  # get 'genre/create'
  # get 'genre/delete'
  # get 'genre/update'

  # NOTE: Mood Resources
  resources :moods

  # NOTE: Theme Resources
  resources :themes

  # NOTE: Message Resources
  resources :messages
    get 'messages/new/project' => 'messages#new_project'

  # NOTE: Contact Resources
  resources :contacts

  # NOTE: Page Resources
  resources :pages
  # get ':id' => 'pages#show'

  # Default route to be processed last
  match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]
end
