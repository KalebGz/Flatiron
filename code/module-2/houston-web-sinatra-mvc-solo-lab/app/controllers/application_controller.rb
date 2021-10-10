class ApplicationController < Sinatra::Base
    configure do
        set :views, 'app/views'
        set :method_override, true
      end
    
      get '/' do
        @puppies = Puppy.all
        erb :welcome
      end


#       Create a new puppy
# Edit an exsiting puppy
# Delete an exsiting puppy

   
end
