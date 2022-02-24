class OfferReviewController < ApplicationController

    def new
        @review = OfferReview.new
    end

    def show
        @review = OfferReview.find_by_id(params[:id])
        @offer = Offer.new
    end
end
