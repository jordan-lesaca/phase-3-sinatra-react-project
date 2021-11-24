class MuseumsController < ApplicationController
    #read
    get "/museums" do
        museum = Museum.all.order(:name).limit(10)
        museum.to_json
        #return json
    end
    #read
    get "/museums/:id" do #the ":" means it is dynamic.  
        museum = Museum.find(params[:id])
        museum.to_json
        #return json
    end
    #post
    post "/museums" do
        museum = Museum.create(
            name: params[:name]
        )
    end
    #delete
    delete "/museums/:id" do
        museum = Museum.find(params[:id])
        museum.destroy
        museum.to_json
    end
    #patch
    patch "/museums/:id" do
        museum = Museum.find(params[:id])
        museum.update(
            name: params[:name]
        )
        museum.to_json
    end
end