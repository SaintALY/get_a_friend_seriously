class OffersController < ApplicationController
    def index
        @offer = Offer.all
    end

    def new
        @offer = Offer.new
    end

    def create
        @offer = Offer.new(offer_params)
        @offer.save
        redirect_to_offer_path(@offer)
    end

    def show
        @offer = Offer.find(params[:id])
    end

    private

    def offer_params
        params.require(:offer).permit(:title, :content, :wiki_url, :wiki_tag)
    end
end
