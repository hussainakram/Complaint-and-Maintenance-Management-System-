class WorkersController < ApplicationController
  

  def index
    @workers = Worker.all
  end
  def destroy
  end

  def create
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    #instaniate a new object using form paramters
    @worker = Worker.find(params[:id])
    
    #save the object
    if @worker.update_attributes(worker_params)
    # if saved redirect to index page  
      redirect_to(:action => 'show', :id => @worker.id)
    else
    #redisplay the page to remove the errors
      render('edit')
    end
  end

  def select_items
    #instaniate a new object using form paramters
    @items = Item.new(params[:name])
    #save the object
    if @items.save
    # if saved redirect to index page  
      redirect_to(:action => 'show')
    else
    #redisplay the page to remove the errors
      render('select_items')
    end
  end

  def show
    @worker = Worker.find(params[:id])
    @worker_complaints = @worker.complaints
  end
end

private 
  def worker_params
    params.require(:worker).permit(:full_name, :phone)
  end
