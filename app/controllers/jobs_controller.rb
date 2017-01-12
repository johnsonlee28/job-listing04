class JobsController < ApplicationController
  before_filter :authenticate_user!, only:[:new,:edit,:create,:update,:destroy]

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = "You are not admin"
      redirect_to root_path
    end
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save(job_params)
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job.params)
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:warning] = "Job was deleted!"
    redirect_to jobs_path
  end

private
  def job_params
    params.require(:job).permit(:title,:description)
  end

end
