class MachinesController < ApplicationController
  before_action :machine_set_ategory2, only: [:car, :car_show]
  before_action :machine_set_ategory3, only: [:bike, :bike_show]
  

  def index
    @machines = Machine.order("created_at DESC")
    @users = User.all
  end

  def car

  end

  def car_show
  end

  def bike
  end

  def bike_show
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    if @machine.save
      redirect_to machines_path(@machine)
    else
      render :new
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    if @machine.update(edit_params)
      redirect_to machines_path
    else
      render :edit
    end
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to machines_path
  end


  private

  def machine_params
    params.require(:machine).permit(:charm, :category_id, :image).merge(user_id: current_user.id)
  end

  def edit_params
    params.require(:machine).permit(:charm).merge(user_id: current_user.id)
  end
  def machine_set_ategory2
    @machine = Machine.where(category_id: 2).order("created_at DESC")
  end

  def machine_set_ategory3
    @machine = Machine.where(category_id: 3).order("created_at DESC")
  end
end
