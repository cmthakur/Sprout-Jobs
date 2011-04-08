class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
    @jobs = Job.where('deadline > ?',Date.today).order('created_at desc').limit(3)
  end

  def show
    @applicant = Applicant.find(params[:id])
    job_id = @applicant.job_id
    @job = Job.find(job_id)
  end
  def new
    @applicant = Applicant.new
    @job =Job.find(params[:job_id])
  end

  def create
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.create(params[:applicant])
    if @applicant.save
      Sendmail.applicant_to_admin(@applicant).deliver
      redirect_to applicants_path, :notice => 'Your application has been sent. Thank You.'
    else
      render :action => "new", :alert => 'Please try again.'
    end
  end

  def search
    @applicants = Applicant.search(params[:search])
  end
end
