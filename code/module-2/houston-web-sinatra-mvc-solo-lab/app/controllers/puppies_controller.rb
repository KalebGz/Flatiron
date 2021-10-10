class PuppiesController < ApplicationController
   
        get '/puppies/new' do 
            erb :new
        end

      get '/puppies/:id' do
        @puppy = Puppy.find(params[:id])
        erb :show
      end


      post '/puppies' do
        puppy = Puppy.create(params[:puppy])
        redirect "/puppies/#{puppy.id}"
      end

      get '/puppies/:id/edit' do
        @puppy = Puppy.find(params[:id])
        erb :edit
      end

      patch '/puppies/:id' do
        puppy = Puppy.find(params[:id])
        puppy.update(params[:puppy])
        redirect "/puppies/#{puppy.id}"
      end

      delete '/puppies/:id' do 
        puppy = Puppy.find(params[:id])
        puppy.destroy
        redirect "/"
      end
end