class JobsController < ApplicationController

  before_filter :authenticate_admin! ,:except => :show, :except => :search

  def index
     @jobs = Job.where('deadline > ?',Date.today).order('created_at desc').limit(3)
  end

  def show
    @job = Job.find(params[:id])
  end
  def show_archived_jobs
     @jobs = Job.order('created_at desc')
   end

  def new
    @job = Job.new
  end

  def create
    if @job = Job.create(params[:job])
    redirect_to jobs_path, :notice => 'New Job Created'
    else
      render :action => "new", :alert => 'Job could not be created. Try again.'
    end
  end
  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
       redirect_to jobs_path, :notice => "Job Deleted Successfully"
    else
       redirect_to jobs_path, :alert => "Job Deletion Failed!!"
    end
  end
  def search
    @jobs = Job.search(params[:search])
  end
end
