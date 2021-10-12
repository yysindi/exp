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
    true
    #record.user == user || user.admin
  end

  def create?
    true
    #record.user == user || user.admin
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
