class JobsController < ApplicationController

  before_filter :authenticate_admin! ,:except => [:show,:search]

  def index
     @jobs = Job.where('deadline > ?',Date.today).order('created_at desc').limit(4)
  end

  def show
     @job = Job.find(params[:id])
    if params[:list]
      @applicants = eval("@job.applicants." + params[:list])
     else
       @applicants = @job.applicants.order('accepted ASC')
   end
  end

  def show_archived_jobs
     @jobs = Job.order('created_at desc')
  end

  def process_short_list
    @job = Job.find(params[:id])
    @applicants = Array.new
    if params[:arr]
       params[:arr].each_with_index do |key, value|
         @applicant = Applicant.find(key)
         @applicants << @applicant
       end
       @action = params[:selector]
     end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(params[:job])
    if @job.save
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

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to job_path(@job), :notice => "Job details updated"
    else
      redirect_to :action => "edit", :alert => "Job details could not be updated"
    end
  end

end
