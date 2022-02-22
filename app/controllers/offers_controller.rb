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

    def edit
    end

    def update
        if @offer.update(offer_params)
          redirect_to @offer, notice: 'Offer was successfully updated.'
        else
          render :edit
        end
    end

    def destroy
        @offer.destroy
        redirect_to offer_url, notice: 'Offer was successfully destroyed.'
    end

    private

    def offer_params
        params.require(:offer).permit(:title, :description, :picture_url, :location, :price)
    end


end
