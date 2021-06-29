class JobApplicationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

# authentication for these actions to be completed later in line with view access

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

  def update?
    user.admin
  end

  def edit?
    user.admin
  end

  def destroy?
    record.user == user || user.admin
  end
end
