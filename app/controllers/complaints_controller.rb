class ComplaintsController < ApplicationController

  #layout false

  def index
    http_cache_forever(public: true) {}
    if current_user.user_type == 'operator'
      @complaints = Complaint.all
    else
      @complaints = current_user.complaints
    end
  end

  def show
    http_cache_forever(public: true) {}
    @complain = Complaint.find(params[:id])
    unless current_user.user_type == 'complainer' && current_user.complaints.where(id: @complain.id).count > 0
      redirect_to :root, notice: 'You don\'t have access to this page' && return
    end
  end

  def create
    @complain = current_user.complaints.new(complain_params)
    #save the object
    if @complain.save
    # if saved redirect to index page  
    flash[:new] = "One new complain has been submitted by you!"
      redirect_to current_user
    else
    #redisplay the page to remove the errors
      render('new')
    end
  end
  
  def new
    @complain = current_user.complaints.new
  end

  def edit
    @complain = Complaint.find(params[:id])
  end

  def update
    #instaniate a new object using form paramters
    @complain = Complaint.find(params[:id])
    
    #save the object
    if @complain.update_attributes(complain_params)

      if @complain.status == 'completed'
        UserNotifierMailer.send_complain_email(@complain.user).deliver
  
      elsif @complain.status == 'accepted'
        UserNotifierMailer.sign_up(@complain.user).deliver

      elsif @complain.status == 'rejected'
        UserNotifierMailer.rejected_complain(@complain.user).deliver    
      end
    # if saved redirect to index page  
      flash[:success] = "Your complain has been updated"
      redirect_to @complain
    else
    #redisplay the page to remove the errors
      render('edit')
    end
  end

  def delete
    @complain = Complaint.find(params[:id])
  end

  def destroy
    @complain = Complaint.find(params[:id])
    @complain.destroy
    flash[:error] = "One complain has been deleted"
    redirect_to(action: 'index')
  end

  private 

  def complain_params
    params.require(:complain).permit(:title, :details, :category, :user_id, :sdo_id, :worker_id,:status)
  end
end
