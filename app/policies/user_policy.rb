class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record == user || user.admin
  end

  def edit?
    record == user || user.admin
  end

  def destroy?
    record == user || user.admin
  end
end
