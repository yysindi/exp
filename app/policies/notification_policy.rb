class NotificationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def destroy?
    record.user == user || user.admin
  end

  def update?
    record.user == user || user.admin
  end

  def edit?
    record.user == user || user.admin
  end

  def show?
    record.user == user || user.admin
  end
end
