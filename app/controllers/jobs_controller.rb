class JobsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
    if params[:ids].present?
      @jobs = @jobs.where(id: params[:ids])
    end
  end

  def show
    @exp_score = @job.exp_scores
  end

  def new
    @user = current_user
    @job = Job.new
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    @job.created_at = Time.now
    @job.updated_at = Time.now
    @job.accepting_applications = true
    if @job.save
      flash[:notice] = "Gig successfully created"
      sleep 2
      redirect_to job_path(@job)
    else
      flash[:error] = "Gig creation was unsuccessful"
      sleep 2
      redirect_to new_job_path
    end
  end

  def edit
  end

  def update
    @job.update(job_params)
    @job.updated_at = Time.now

    redirect_to job_path(@job)
  end

  def destroy
    @job.destroy

    flash[:notice] = "Gig successfully deleted"
    sleep 2

    redirect_to jobs_path
  end

  def search
    @jobs = Job.all
    authorize @job
    if params.dig(:search, :query).present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR company_name ILIKE :query"
      @jobs = @jobs.where(sql_query, query: "%#{params[:search][:query]}%")
    end
     if params.dig(:search, :industry).present?
       @jobs = @jobs.where(industry: params[:search][:industry])
     end

    if params.dig(:search, :paid).present?
      @jobs = @jobs.where(paid: params[:search][:paid])
    end

    if params.dig(:search, :location).present?
      sql_query = 'location ILIKE :location'
      @jobs = @jobs.where(sql_query, location: "%Remote%")
    end

    redirect_to jobs_path(ids: @jobs.pluck(:id))
  end

  def toggle_favorite
    if !Job.find(params[:id]).favorited_by?(current_user)
        current_user.favorite(Job.find(params[:id]))
    else
      current_user.unfavorite(Job.find(params[:id]))
    end

      if params[:showpage]
        redirect_to job_path(Job.find(params[:id]))
      else
        redirect_to jobs_path(scroll: true, ids: params[:ids])
      end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:industry, :title, :description, :logo, :website, :paid, :compensation, :start_date, :end_date, :accepting_applications, :created_at, :updated_at, :completed, :company_name, :location, :about)
  end
end
