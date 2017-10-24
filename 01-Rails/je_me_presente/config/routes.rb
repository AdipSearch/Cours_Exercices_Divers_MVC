Rails.application.routes.draw do
  root 'static_pages#home'
  get 'home', to: 'static_pages#home'

  get '/contact', to: 'static_pages#contact', as:'contact'

  get '/about', to: 'static_pages#about', as:'about'

  get '/about/Adeline', to: 'static_pages#adeline', as:'adeline'

  get '/about/Binôme', to: 'static_pages#binome', as:'binome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
