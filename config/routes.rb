Rails.application.routes.draw do
  get 'questions/index'

  get 'questions/new'

  get 'questions/create'

  get 'questions/show'

  get 'questions/edit'

  get 'questions/update'

  get 'questions/destroy'

  resources :advertisements

  resources :posts
  
  resources :questions

  get 'about' => 'welcome#about'
  
  get 'welcome/contact'
  
  get 'welcome/faq'
  
  root 'welcome#index'

 end
