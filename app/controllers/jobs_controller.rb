class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if params[:ids].present?
      @jobs = @jobs.where(id: params[:ids])
    end
  end

  def show
    @job = Job.find(params[:id])
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
end
