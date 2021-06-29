class FavoritesController < ApplicationController
  def index?
    auth_favorite
  end

  def show?
    auth_favorite
  end

  def create?
    auth_favorite
  end

  def new?
    auth_favorite
  end

  def edit?
    auth_favorite
  end

  def destroy?
    auth_favorite
  end

  def update?
    auth_favorite
  end

  private

  def auth_favorite
    authorize @favorite
  end
end
