class UsersController < ApplicationController

  def index
    @users = policy_scope(User).order(created_at: :desc)
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @job_applications = JobApplication.where(user_id: @user.id)
    # @exp_scores = @user.exp_scores.group(:industry)
    @favorites = current_user.all_favorited
    @exp_scores = @user.exp_scores
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    if @user
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def search
    @users = User.all
    if params.dig(:search, :query).present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR company_name ILIKE :query"
      @users = @users.where(sql_query, query: "%#{params[:search][:query]}%")
    end
     if params.dig(:search, :desired_industry).present?
       @users = @users.where(desired_industry: params[:search][:desired_industry])
     end

    if params.dig(:search, :paid).present?
      @users = @users.where(paid: params[:search][:paid])
    end

    if params.dig(:search, :location).present?
      sql_query = 'location ILIKE :location'
      @users = @users.where(sql_query, location: "%Remote%")
    end

    redirect_to users_path(ids: @users.pluck(:id))
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_description, :linked_in, :desired_industry, :twitter_url, :photo)
  end
end
