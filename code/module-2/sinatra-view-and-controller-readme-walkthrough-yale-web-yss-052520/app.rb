require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    orig_str = params[:string]
    @reversed_str = orig_str.reverse
    erb :reversed
  end

  get '/friends' do

    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb:friends

  end
end