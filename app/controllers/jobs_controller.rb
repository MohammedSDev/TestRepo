class JobsController < ApplicationController

  def index
  	@jobs = Job.all
  end

  def show
  	@job=Job.find_by id: params[:id]
  end

  def edit
  	@job=Job.find_by id: params[:id]
  end
  def update
  	
  end

  def new
  	@job=Job.new
  end

  def create
  	# Initilie Object with Params
  	# save it
  	# if true
  	# if false
  	
  end
end
