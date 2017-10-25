class GossipsController < ApplicationController

    def index
        @gossips = Gossip.all
        
    end

    def new
        
    end

    def create
        @gossip = Gossip.create(gossip_params)
        redirect_to @gossip
    end

    def show
        @gossip = Gossip.find(params[:id])
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        @gossip.update(gossip_params)
        redirect_to @gossip
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to index_path

        
    end
end

private

    def gossip_params

        params.require(:gossip).permit( :anonymous_author, :content)
        
    end
