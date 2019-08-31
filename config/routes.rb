Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static_pages#home"

  get 'register' => 'static_pages#register'
  get 'sign-in' => 'static_pages#sign_in'

  devise_for :artists, controllers: { sessions: "artists/sessions", passwords: "artists/passwords", registrations: "artists/registrations", confirmations: "artists/confirmations",  unlocks: "artists/unlocks"}

  devise_scope :artist do
    get 'sign_out', to: 'artists/sessions#destroy', path: 'sign-out'
  end

  resources :artists, controller: 'artists/artists', only: :show # add do
    #resource :profile, controller: 'profiles/profiles', only: [:edit, :update]
  #end

  devise_for :fans, controllers: { sessions: "fans/sessions", passwords: "fans/passwords", registrations: "fans/registrations", confirmations: "fans/confirmations",  unlocks: "fans/unlocks"}

  devise_scope :fan do
    get 'sign_out', to: 'fans/sessions#destroy'
  end

  resources :fans, controller: 'fans/fans', only: :show # add do
    #resource :profile, controller: 'profiles/profiles', only: [:edit, :update]
  #end

end
