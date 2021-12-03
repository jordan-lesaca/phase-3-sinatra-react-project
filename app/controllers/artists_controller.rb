class ArtistsController < ApplicationController 
    
    get "/artists" do #GET READ
        #return json
        artist = Artist.all.order(:name).limit(10)
        artist.to_json
      end
    
    get "/artists/:id" do #the ":" means it is dynamic.  
        #return json
        artist = Artist.find(params[:id])
        artist.to_json
    end
    
    post "/artists" do
        artist = Artist.create(
            name: params[:name],
            style: params[:style],
            year_born: params[:year_born],
        )
        artist.to_json
    end
    
    delete "/artists/:id" do
        artist = Artist.find(params[:id])
        artist.destroy
        artist.to_json
    end

    patch "/artists/:id" do
        artist = Artist.find(params[:id])
        artist.update(
            name: params[:name],
            style: params[:style],
            year_born: params[:year_born],            
        )
        artist.to_json
    end
 end