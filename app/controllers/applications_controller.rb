class ApplicationsController < ApplicationController
  # def create
  #   @job = Job.find(params[:job_id])
  #   @application = Application.new(application_params)
  #   @application.job = @job
  #   if @application.save
  #     redirect_to job_path(@job)
  #   else
  #     render "jobs/show"
  #   end
  # end

  private

  def application_params
    params.require(:application).permit(:status, :date_applied)
  end
end
