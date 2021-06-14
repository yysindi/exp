class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @applications = Application.where(user_id: @user.id)
    @exp_scores = @user.exp_scores.group(:industry)
    @favorites = current_user.all_favorited
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_description, :linked_in, :desired_industry, :twitter_url, :photo)
  end
end
