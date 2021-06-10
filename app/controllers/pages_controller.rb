class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @jobs = Job.last(3)
  end


  # def apply
  #   @job = Job.find(params[:job_id])
  #   @user = current_user
  #   @application = Application.new
  #   @application.date_applied = Time.now
  #   @application.job = @job
  #   @application.user = @user
  #   @applied = @user.applications.find_by(job_id: @job.id)
  #   if @application.save
  #     @applied = true
  #     flash[:notice] = "Applied!"
  #     redirect_to job_path(@job)
  #   else
  #     render "jobs/show"
  #   end
  # end
end
