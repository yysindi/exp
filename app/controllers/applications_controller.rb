class ApplicationsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @user = current_user
    @application = Application.new #   (application_params)
    @application.date_applied = Time.now
    @application.job = @job
    @application.user = @user
    if @application.save
      # redirect_to job_path(@job)
      render :show
    else
      render "jobs/show"
    end
  end

  private

  # def application_params
  #   params.require(:application).permit(:status, :date_applied)
  # end
end
