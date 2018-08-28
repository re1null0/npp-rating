Rails.application.routes.draw do
  resources :grads
  resources :invests
  resources :credits
  resources :psostavs
  resources :soglas
  resources :university_pulls
  resources :estimations
  resources :disciplines
  resources :universities
  resources :specialities
  resources :speciality_pulls
  resources :syllabuses
  resources :roles
  get 'sessions/new'
  resources :users
  root 'static_pages#home'
  
  get  '/panel',    to: 'static_pages#panel'

  get  '/expert_list',    to: 'static_pages#expert_list'

  get  '/coordinator_list',    to: 'static_pages#coordinator_list'

  get  '/disciplines_list',    to: 'static_pages#disciplines_list'

  get  '/vuz_list',    to: 'static_pages#vuz_list'

  get  '/spec_list',    to: 'static_pages#spec_list'

  get  '/dis_of_uni',    to: 'static_pages#dis_of_uni'

  get 'download', to: 'specialities#download', format: 'docx'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
end