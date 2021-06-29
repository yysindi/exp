class JobApplicationsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    authorize @job
    @user = current_user
    @job_application = JobApplication.new
    @job_application.date_applied = Time.now
    @job_application.job = @job
    @job_application.user = @user
    @applied = @user.job_applications.find_by(job_id: @job.id)
    if @job_application.save
      @applied = true
      ApplicationNotification.with(job: @job).deliver(current_user)
    else
      render "jobs/show"
    end
  end
end
