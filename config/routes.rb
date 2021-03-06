Rails.application.routes.draw do

  resources :use_types
  resources :contact_methods
  resources :statuses
  devise_for :users

  resources :properties do
    resources :units
  end
  resources :garages
  resources :sources
  resources :prequalifications
  resources :representations
  resources :residential_applications
  resources :units do
    collection do
      get 'search'
    end
  end
  resources :brokers do
    collection do
      get 'search'
    end
  end
  resources :residential_leads do
    collection do
      get 'search'
    end
    resources :residential_applications
    resources :prequalifications
  end
  
  get 'pages/home'
  get 'pages/available_units'

  resources :commercial_leads do
    collection do
      get 'search'
      get :active
      get :application
      get :signed
      get :rented_elsewhere
      get :not_a_good_fit
      get :denied
      get :closed
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  #get '*path' => redirect('/')

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
