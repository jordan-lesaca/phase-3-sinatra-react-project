class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/artists/:id" do #the ":" means it is dynamic.  
    #return json
  end

  get "/paintings" do
    #return json
  end

  get "/museums" do
    #return json
  end

end
