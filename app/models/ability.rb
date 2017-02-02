class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can [:manage], User
      can [:manage], UserConfess
      can [:manage], Theme
    end
  end
end
