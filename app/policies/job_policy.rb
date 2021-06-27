class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      record.user == user || user.admin
    end

    def new?
      create?
    end

    def update?
      user == record.user || user.admin
    end

    def edit?
      update?
    end

    def destroy?
      user == record.user || user.admin
    end
  end
end
