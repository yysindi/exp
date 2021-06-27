class ExpScorePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      user.admin == user
    end

    def show?
      user == record.user || user.admin
    end

    def create?
      user.admin
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
      user.admin
    end
  end
end
