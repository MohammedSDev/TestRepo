class JobsController < ApplicationController

  def index
    # byebug

  	@jobs = Job.all
    
  end

  def show
  	@job=Job.find_by id: params[:id]
  end

  # def edit
  # 	@job=Job.find_by id: params[:id]
  # end

  def update
  	# find Object and set Params
  	@job=Job.find_by id: params[:id]
  	
  	# save it
  		
  	if @job.update_attributes job_params
  		put "Successful"
  		redirect_to :action => "show",id: @job
  	else
  		put "Failer"
  		render "edit"
  	end

  end

  def new
  	@job=Job.new
  end

  def create
  	# Initilie Object with Params
  	@job = Job.new job_params
 	# save it
  	if @job.save
  		redirect_to :action => "show",id: @job
  	else
  		render "new"
  	end
  	
  	
  end

  private
  def job_params
  	params.require(:job).permit [:name,:salary]
  	
  end
end
