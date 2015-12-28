Spree::Core::Engine.routes.draw do
  get '/cart', :to => redirect('/404')
  patch '/cart', :to => redirect('/404')
  put '/cart/empty', :to => redirect('/404')
  # Add your extension routes here
end
