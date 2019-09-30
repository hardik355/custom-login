class RegistersController < ApplicationController
  def index
    @registers = Register.all
  end

  def new
    @register = Register.new
  end

  def create  
    @register = Register.new(register_params)
    @register.save
    redirect_to :new_session
  end

  def edit
    @register = Register.find(params[:id])
  end

  def update
    @register = Register.find(params[:id])
    @register.update(register_params)
    redirect_to @register
  end

  def show
    @register = Register.find(params[:id])
  end

  def destroy
    @register = Register.find(params[:id])
    @register.destroy
    redirect_to @register
  end

  private 
  def register_params
    params.require(:register).permit(:first_name, :last_name, :email, :city, :pincode, :password)
  end
end
