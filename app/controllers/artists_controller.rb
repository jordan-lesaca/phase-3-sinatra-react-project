class ArtistsController < ApplicationController 
    #read
    get "/artists" do #Get is a read request. GET READ
        #return json
        artist = Artist.all.order(:name).limit(10)
        artist.to_json
      end
    #read
    get "/artists/:id" do #the ":" means it is dynamic.  
        #return json
        artist = Artist.find(params[:id])
        artist.to_json(only: [:id, :name, :style, :age], include: {
            paintings: { only: [:title, :paint_type, :year_created], include: {
                museum: { only: [:name] }
            }}
        })
    end
    #post
    post "/artists" do
        artist = Artist.create(
            name: params[:name],
            style: params[:style],
            age: params[:age],
        )
    end
    #delete
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
            age: params[:age],            
        )
        artist.to_json
    end
end