Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # root to: 'movies#index'
  # get '/movies/get_characters' => 'movies#get_characters'


  root to: 'instagram#index'

  get '/oauth/connect' => 'instagram#oauth_connect'
  get '/oauth/callback' => 'instagram#oauth_callback'
  get '/instagram/cats' => 'instagram#content_cats'

end
