class JobPolicy < ApplicationPolicy
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
    record.user == user || user.admin
  end

  def create?
    record.user == user || user.admin
  end

  def search?
    true
  end

  def update?
    record.user == user || user.admin
  end

  def edit?
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end
end
