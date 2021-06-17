class ApplicationsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @user = current_user
    @application = Application.new
    @application.date_applied = Time.now
    @application.job = @job
    @application.user = @user
    @applied = @user.applications.find_by(job_id: @job.id)
    if @application.save
      @applied = true
      ApplicationNotification.with(job: @job).deliver(current_user)
      redirect_to job_path(@job)
    else
      render "jobs/show"
    end
  end

  private

end
