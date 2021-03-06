class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def update?
    user == record.sozee.user
  end

  def destroy?
    true
  end

  private

  def is_user_the_owner?
    user == record.user
  end
end
