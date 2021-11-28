class PaintingsController < ApplicationController
    #read
    get "/paintings" do
        #return json
        painting = Painting.all.order(:year_created).limit(10)
        painting.to_json
    end
    #read
    get "/paintings/:id" do #the ":" means it is dynamic.  
        #return json
        painting = Painting.find(params[:id])
        painting.to_json
    end
    #post
    post "/paintings" do
        painting = Painting.create(
            title: params[:title],
            year_created: params[:year_created],
            artist_id: params[:artist_id],
        )
        painting.to_json
    end
    #delete
    delete "/paintings/:id" do
        painting = Painting.find(params[:id])
        painting.destroy
        painting.to_json
    end
    #patch
    patch "/paintings/:id" do
        painting = Painting.find(params[:id])
        painting.update(
            title: params[:title],
            year_created: params[:year_created],
            artist_id: params[:artist_id],        
        )
        painting.to_json
    end
end