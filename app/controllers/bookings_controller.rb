class BookingsController < ApplicationController
    def create
        @booking = Booking.new(booking_params)
        @offer = Offer.find(params[:offer_id])
        @booking.offer = @offer
        @booking.user = current_user
        if @booking.save
            redirect_to offer_path(@offer), alert: "Yeah, you booked a Friend."
        else
            render "offers/show"
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date)
    end
end
