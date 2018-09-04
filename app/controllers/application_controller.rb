class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipes' do
    @recipe = Recipe.all 
    erb :index
  end
  
  get '/recipes/new' do
    erb :new 
  end
  
  post '/recipes'
end