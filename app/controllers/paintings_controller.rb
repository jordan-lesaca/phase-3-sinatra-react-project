class PaintingsController < ApplicationController
    
    get "/paintings" do
        painting = Painting.all.order(:year_created).limit(10)
        painting.to_json
    end
    
    get "/paintings/:id" do 
        painting = Painting.find(params[:id])
        painting.to_json
    end
    
    post "/paintings" do
        painting = Painting.create(
            title: params[:title],
            year_created: params[:year_created],
            artist_id: params[:artist_id],
        )
        painting.to_json
    end
    
    delete "/paintings/:id" do
        painting = Painting.find(params[:id])
        painting.destroy
        painting.to_json
    end
    
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