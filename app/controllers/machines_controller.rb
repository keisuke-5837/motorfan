class MachinesController < ApplicationController
  def index
    @machines = Machine.order("created_at DESC")
    @users = User.all
  end

  def car
    @machines = Machine.all
    @machine = Machine.where(category_id: 2)
  end

  def car_show
    @user = User.all
    @machines = Machine.all
    @machine = Machine.where(category_id: 2)
  end

  def bike
    @machines = Machine.all
    @machine = Machine.where(category_id: 3)
  end

  def bike_show
    @user = User.all
    @machines = Machine.all
    @machine = Machine.where(category_id: 3)
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
