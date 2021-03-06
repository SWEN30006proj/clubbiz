Clubbiz::Application.routes.draw do
  get "home_page/student_view"
  get "home_page/student_edit"
  get "home_page/society_view"
  get "home_page/society_edit"
  get "home_page/event_view"
  #get "index", to: 'home_page#index', as:'index'
  root 'home_page#index'
  resources :reservations
  #resources :people
  get 'reservations/view_by_member/:id', to: 'reservations#view_by_member', as: 'view_by_member'

  get 'events/share_with_societies'
  post 'events/share_with_societies'
  post 'events/new'
  get 'societies/confirmation'
  resources :societies
  resources :events

  devise_for :students
  resources :startuppage
  resources :studenthomepage

  get 'search/index'
  get 'search/list_society'
  get 'search/list_event'
  get 'search/list'
  get 'search/eventlist'


  resources :maintopics do
    resources :subtopics
  end



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
