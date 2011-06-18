class Ability
  include CanCan::Ability
  
  def initialize(current_client = nil, current_leader = nil)

    unless current_client.nil?
      if current_client
        cannot :read, :all
      end
    end

     unless current_leader.nil?
      if current_leader.role? :DG
        can :manage, :all
      elsif current_leader.role? :DG
        can :read, :all
      elsif current_leader.role? :Formateur
        cannot :read, :all
      end
    end
    

  end
end

