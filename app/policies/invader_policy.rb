class InvaderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def new?
    current_user.admin?
  end

  def create?
    current_user.admin?
  end

  def edit?
    update?
  end

  def update?
    current_user.admin?
  end

  def destroy?
    current_user.admin?
  end
end
