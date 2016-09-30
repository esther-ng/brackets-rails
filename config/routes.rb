Rails.application.routes.draw do
  get 'soil_samples/' => 'soil_samples#index'

  get 'soil_samples/:id', to: 'soil_samples#show', as: 'soil_sample'

  get 'soil_samples/new' => 'soil_samples#new'

  post 'soil_samples' => 'soil_samples#create'

  get 'soil_samples/:id/edit', to: 'soil_samples#edit', as: 'soil_sample_edit'
  patch 'soil_samples/:id' => 'soil_samples#update'

  # get 'soil_samples/:id/destroy', to: 'soil_samples#confirm_deletion', as: 'soil_sample_destroy' 
  delete 'soil_samples/:id' => 'soil_samples#destroy'



  root 'entries#index'
  get '/entries' => 'entries#index'
  get '/entries/new' => 'entries#new'
  get '/entries/:id' => 'entries#show'

  post '/entries' => 'entries#create'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
end
