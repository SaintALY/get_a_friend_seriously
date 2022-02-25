class DashboardsController < ApplicationController
  before_action :set_user, :check

  def show
    @user = User.find_by_id(params[:user_id])
    @bookings = Booking.where(user_id: @user.id)

  private

  def set_user
    @user = User.find_by_id(params[:user_id])
  end

  def check
    return redirect_to root_path, notice: "Sorry, you can only access your own profile silly." unless current_user == @user
  end
end
