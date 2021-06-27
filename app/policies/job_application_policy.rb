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
    true
  end

# except create, as this is done already

  def create?
    true
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
