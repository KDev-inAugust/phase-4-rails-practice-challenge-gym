class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates_with MembershipUniqValidator
    validates :gym_id, presence: true
    validates :client_id, presence: true

end
