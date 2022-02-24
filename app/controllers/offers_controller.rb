class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    @offer.save
    redirect_to offers_path(@offer)
  end

  def show
    @offer = Offer.find_by_id(params[:id])
    @booking = Booking.new
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Your Friend-Search-Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to offer_url, notice: 'Your Friend-Search-Offer was successfully destroyed.'
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :photo, :location, :price)
  end

end
