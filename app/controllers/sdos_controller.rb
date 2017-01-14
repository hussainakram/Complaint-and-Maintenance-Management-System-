class SdosController < ApplicationController
  def index
    @sdos = Sdo.all
  end

  def edit
    @sdo = Sdo.find(params[:id])
  end

  def destroy
  end

  def create
  end

  def update
    #instaniate a new object using form paramters
    @sdo = Sdo.find(params[:id])
    
    #save the object
    if @sdo.update_attributes(sdo_params)
    # if saved redirect to index page  
      redirect_to(:action => 'show', :id => @sdo.id)
    else
    #redisplay the page to remove the errors
      render('edit')
    end
  end

  def show
    @sdo = Sdo.find(params[:id])
    @sdo_complaints = @sdo.complaints
  end
end

private 
  def sdo_params
    params.require(:sdo).permit(:name, :email)
  end
