class JobsController < ApplicationController

  def index
    @jobs = Job.page(params[:page])
    if params[:ids].present?
      @jobs = @jobs.where(id: params[:ids])
    end
  end

  def show
    @job = Job.find(params[:id])
    @exp_score = @job.exp_scores
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.save

    redirect_to job_path(@job)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)

    redirect_to job_path(@job)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to jobs_path
  end

  def search
    @jobs = Job.all
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

  def job_params
    params.require(:job).permit(:industry, :title, :description, :logo, :website, :paid, :compensation, :start_date, :end_date, :accepting_applications, :created_at, :updated_at, :completed, :company_name, :location, :about)
  end
end
