class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @machines = Machine.order("user_id DESC")
  end

  def edit
  end
end
