class SessionController < ApplicationController

  def new
  end

  def edit
    @session = Register.find(params[:id])
  end

  def show  
    @session = Register.find(params[:id])
  end

  def create
    user = Register.find_by_email(params[:email])
      if user && Register.find_by_password(params[:password])
        session[:user_id] = user.id
        redirect_to edit_session_path(user.id), notice: "Login in succesfully !"
       else
        flash.now.alert = "Email or password is invalid."
     end
  end

  def destroy
    session[:user_id] = nil
    session.destroy
    redirect_to new_session_path, notice: 'Log out succesfully !'
  end 
  
  def update
    @register = Register.find(params[:id])
    @register.update(register_params)
    redirect_to session_path
  end
  

  private
  def register_params
    params.require(:register).permit(:first_name, :last_name, :email, :city, :pincode, :password)
  end

end
