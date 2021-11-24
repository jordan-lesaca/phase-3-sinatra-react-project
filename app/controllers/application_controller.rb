class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/artists" do
    #return json
  end

  get "/artists/:id" do #the ":" means it is dynamic.  
    #return json
    artist = Artist.find(params[:id])
    binding.pry
  end

  get "/paintings" do
    #return json
  end

  get "/paintings/:id" do #the ":" means it is dynamic.  
    #return json
  end

  get "/museums" do
    #return json
  end

  get "/museums/:id" do #the ":" means it is dynamic.  
    #return json
  end

end
