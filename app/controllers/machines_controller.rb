class MachinesController < ApplicationController
  def index
    @machines = Machine.order("created_at DESC")
    @users = User.all
  end

  def car
    @machine = Machine.where(category_id: 2).order("created_at DESC")
    @user = User.all
  end

  def car_show
    @machine = Machine.where(category_id: 2).order("created_at DESC")
    @user = User.all
  end

  def bike
    @machine = Machine.where(category_id: 3).order("created_at DESC")
  end

  def bike_show
    @user = User.all
    @machine = Machine.where(category_id: 3).order("created_at DESC")
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    if @machine.save
      redirect_to root_path(@machine)
    else
      render :new
    end
  end

  private

  def machine_params
    params.require(:machine).permit(:charm, :category_id, :image).merge(user_id: current_user.id)
  end
end
