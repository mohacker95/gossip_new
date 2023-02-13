Rails.application.routes.draw do
  get 'welcome/welcome_section'
  get '/welcome/display', to: 'welcome#welcome_display'
  get '/welcome/:id', to: 'welcome#welcome_customize' # route qui va me permettre de récup l'entrée dans mon URL ex: http://localhost:3000/welcome/rintintin
  get '/team',to:'team#team'
  get '/contact', to:'contact#contact'
  post '/contact', to:'contact#contact_post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
