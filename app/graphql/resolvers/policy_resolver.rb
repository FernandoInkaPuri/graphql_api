module Resolvers
  class PolicyResolver < BaseResolver
    type Types::PolicyType, null: false
    argument :policy_id, ID

    def resolve(policy_id:)
      # response = requisição
    end
  end
end