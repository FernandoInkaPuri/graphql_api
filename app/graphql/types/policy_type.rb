module Types
  class PolicyType < Types::BaseObject
    field :policy_id, ID, null: false
    field :data_emissao, String
    field :data_fim_cobertura, String
    field :segurado, Types::SeguradoType, null: false
    field :veiculo, Types::VeiculoType, null: false
    field :status, String, null: false
    field :charge, Types::ChargeType, null: false
  end
end