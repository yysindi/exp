class NotificationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      user.admin
    end

    def show?
      user == record.user || user.admin
    end

    def create?
      user == record.user || user.admin
    end

    def new?
      create?
    end

    def update?
      user.admin
    end

    def edit?
      update?
    end

    def destroy?
      user == record.user || user.admin
    end
  end
end
