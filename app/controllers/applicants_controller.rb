class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all
    @jobs= Job.where('deadline > ?',Date.today).order('created_at desc').limit(3)
  end

  def show
  end
  def new
    @applicant = Applicant.new
  end

  def create
    if @applicant = Applicant.create(params[:applicant])
    redirect_to applicants_path, :notice => 'Application filed'
    else
      render :action => "new", :alert => 'Please try again.'
    end
  end


end
