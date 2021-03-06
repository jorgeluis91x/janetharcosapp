Rails.application.routes.draw do
  resources :departures
  resources :entries
  resources :total_invoices
  resources :departure_types
  resources :entry_types
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  resources :movements
  resources :rentals
  resources :invoice_details
  resources :movement_types
  resources :invoices
  resources :state_products
  resources :state_moneys
  resources :articles
  resources :providers
  resources :product_categories
  resources :clients

  resources :total_invoices do
    resources :entries
  end
  get 'entries/total_invoices/:number', to:  'entries#getTotalInvoice', as: 'total_invoice_select'
  get 'reports', to:  'reports#index', as: 'reports'

  root to: 'entries#index'

#ruta para obtener un cliente al seleccionar
   get '/clients/select/:id', to: 'clientes#seleccionar', as: 'clients_select'
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
