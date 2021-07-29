class MachinesController < ApplicationController
  def index
    @machines = Machine.order("created_at DESC")
  end

  def car
  end

  def bike
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

  def show
    @machines = Machine.All
  end

  private

  def machine_params
    params.require(:machine).permit(:charm, :category_id, :image).merge(user_id: current_user.id)
  end
end
