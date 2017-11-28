class SozeePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def update?
    is_user_the_owner?
  end

  def destroy?
    is_user_the_owner?
  end

  private

  def is_user_the_owner?
    user == record.user
  end
end
