class MembershipUniqValidator < ActiveModel::Validator
    def validate(record)
        if Membership.where(gym_id: record.gym_id, client: record.client_id).exists?
            record.errors.add :base, "Redundant Membership Info"
        end
    end
end