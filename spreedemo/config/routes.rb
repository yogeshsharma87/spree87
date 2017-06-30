Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/custompage' => 'spree/custom#testaction'
  devise_scope :person do
	get '/login', to: "devise/sessions#new"
	get '/signup', to: "devise/registrations#new"
	delete '/logout', to: "devise/sessions#destroy"
  end

  
end
