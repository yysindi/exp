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

  def create?
    true
  end

  def update?
    false
  end

  def edit?
    false
  end

  def destroy?
    false
  end
end
