class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipe' do
    @recipe = Recipe.all
    erb :index
  end
end