class UsersController < ApplicationController
  authorize @user

  def index
    @users = User.all
    @user = policy_scope(User).order(created_at: :desc)
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
