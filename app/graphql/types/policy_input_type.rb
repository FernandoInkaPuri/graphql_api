module Types
  class PolicyInputType < BaseInputObject
    argument :data_emissao, String, required: true
    argument :data_fim_cobertura, String, required: true
    argument :segurado, Types::SeguradoInputType, required: true
    argument :veiculo, Types::VeiculoInputType, required: true
    argument :charge, Types::ChargeInputType, required: true
  end
end