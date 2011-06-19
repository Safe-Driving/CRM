class Ability
  include CanCan::Ability
  
  def initialize(user)

      if user.role.nil?
        #raise 'client'
      elsif user.role == 'DG'
        #raise 'dg'
        can :read, :clients
      elsif user.role == 'DA'
        #raise 'da'
        can :read, :all
      elsif user.role == 'Formateur'
        #raise 'formateur'
        cannot :read, :all
      end
  end
end

