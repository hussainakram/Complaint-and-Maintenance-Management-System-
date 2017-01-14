class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_complaints = @user.complaints
  end

  def new
  end

  def create
    #instaniate a new object using form paramters
    @complain = Complaint.new(complain_params)
    #save the object
    if @complain.save
    # if saved redirect to index page  
      flash[:new] = "Your complain has been updated"
      redirect_to(:action => 'index')
    else
    #redisplay the page to remove the errors
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    #instaniate a new object using form paramters
    @user = User.find(params[:id])
    
    #save the object
    if @user.update_attributes(user_params)
    # if saved redirect to index page  
      flash[:success] = "Your complain has been updated"
      redirect_to(:action => 'show', :id => @user.id)
    else
    #redisplay the page to remove the errors
      render('edit')
    end
  end

  def delete
  end

  private 
  def user_params
    params.require(:user).permit(:user_id, :first_name,:user_type, :last_name, :email, :phone, :address, :profession)
  end

  def complain_params
    params.require(:complain).permit(:title, :category, :user_id, :sdo_id, :worker_id)
  end

end
