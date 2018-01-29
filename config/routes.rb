Rails.application.routes.draw do
  get 'say/hello'

  get 'say/goodbye'
  # inserted by ascalmon
  get 'say/antonio'
  # inserted by ascalmon
  get 'say/json'
  # inserted by ascalmon
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
